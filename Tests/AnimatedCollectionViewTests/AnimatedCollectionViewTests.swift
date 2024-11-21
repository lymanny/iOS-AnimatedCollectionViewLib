import XCTest
@testable import AnimatedCollectionView

final class AnimatedCollectionViewTests: XCTestCase {
    
    @MainActor func testSwingAnimation() {
        let cell = UICollectionViewCell()
        let expectation = XCTestExpectation(description: "Swing animation should complete.")
        
        cell.animateSwingRecursively(times: 1) {
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 1.0)
        XCTAssertTrue(cell.transform == .identity, "Swing animation should reset the cell's transform to identity.")
    }
    
    @MainActor func testJiggleAnimation() {
        let cell = UICollectionViewCell()
        cell.animateJiggle()
        
        // Check if the jiggle animation is added to the cell's layer
        XCTAssertTrue(cell.layer.animation(forKey: "jiggle") != nil, "Jiggle animation should be applied to the cell.")
    }
    
    @MainActor func testShakeVerticalAnimation() {
        let cell = UICollectionViewCell()
        cell.animateShakeVertical()
        
        // Check if the vertical shake animation is added to the cell's layer
        XCTAssertTrue(cell.layer.animation(forKey: "shakeVertical") != nil, "Vertical shake animation should be applied to the cell.")
    }
}
