import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(pokemon_ss_autocontroller_mac_cliTests.allTests),
    ]
}
#endif
