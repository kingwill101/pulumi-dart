import 'package:pulumi/pulumi.dart' as pulumi;

enum FilterEventTypeItemContainerV1beta1 implements pulumi.PulumiEnum<String> {
  eventTypeUnspecified("EVENT_TYPE_UNSPECIFIED"),
  upgradeAvailableEvent("UPGRADE_AVAILABLE_EVENT"),
  upgradeEvent("UPGRADE_EVENT"),
  securityBulletinEvent("SECURITY_BULLETIN_EVENT");

  const FilterEventTypeItemContainerV1beta1(this.wireValue);
  @override
  final String wireValue;

  static FilterEventTypeItemContainerV1beta1 fromValue(String value) {
    for (final item in FilterEventTypeItemContainerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FilterEventTypeItemContainerV1beta1 value: $value');
  }
}
