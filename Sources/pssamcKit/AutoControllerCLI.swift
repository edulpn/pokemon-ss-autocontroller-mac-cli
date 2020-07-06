import SwiftCLI

public struct AutoControllerCLI {
    private static let name = "pokemon-ss-autocontroller-mac-cli"
    private static let version = "0.0.1"
    private static let description = "This is a command line tool that automates building and uploading brianuuuSonic's AutoController to Atmega microcontrollers using avrdude"


    public static var cli: CLI {
        let cli = CLI(name: name,
                      version: version,
                      description: description,
                      commands: [BerryFarmerCommand(),
                                 TurboACommand()])

        return cli
    }
}
