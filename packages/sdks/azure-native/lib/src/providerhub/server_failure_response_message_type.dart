import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of server failure response message.
enum ServerFailureResponseMessageType implements pulumi.PulumiEnum<String> {
  notSpecified("NotSpecified"),
  outageReporting("OutageReporting");

  const ServerFailureResponseMessageType(this.wireValue);
  @override
  final String wireValue;

  static ServerFailureResponseMessageType fromValue(String value) {
    for (final item in ServerFailureResponseMessageType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerFailureResponseMessageType value: $value');
  }
}
