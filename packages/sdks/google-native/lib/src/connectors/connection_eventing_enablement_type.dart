import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Eventing enablement type. Will be nil if eventing is not enabled.
enum ConnectionEventingEnablementType implements pulumi.PulumiEnum<String> {
  eventingEnablementTypeUnspecified("EVENTING_ENABLEMENT_TYPE_UNSPECIFIED"),
  eventingAndConnection("EVENTING_AND_CONNECTION"),
  onlyEventing("ONLY_EVENTING");

  const ConnectionEventingEnablementType(this.wireValue);
  @override
  final String wireValue;

  static ConnectionEventingEnablementType fromValue(String value) {
    for (final item in ConnectionEventingEnablementType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionEventingEnablementType value: $value');
  }
}
