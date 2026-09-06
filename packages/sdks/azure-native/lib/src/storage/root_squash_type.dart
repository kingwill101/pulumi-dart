import 'package:pulumi/pulumi.dart' as pulumi;

/// The property is for NFS share only. The default is NoRootSquash.
enum RootSquashType implements pulumi.PulumiEnum<String> {
  valueNoRootSquash("NoRootSquash"),
  valueRootSquash("RootSquash"),
  valueAllSquash("AllSquash");

  const RootSquashType(this.wireValue);
  @override
  final String wireValue;

  static RootSquashType fromValue(String value) {
    for (final item in RootSquashType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RootSquashType value: $value');
  }
}
