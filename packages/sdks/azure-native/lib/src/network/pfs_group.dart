import 'package:pulumi/pulumi.dart' as pulumi;

/// The Pfs Group used in IKE Phase 2 for new child SA.
enum PfsGroup implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valuePFS1("PFS1"),
  valuePFS2("PFS2"),
  valuePFS2048("PFS2048"),
  valueECP256("ECP256"),
  valueECP384("ECP384"),
  valuePFS24("PFS24"),
  valuePFS14("PFS14"),
  valuePFSMM("PFSMM");

  const PfsGroup(this.wireValue);
  @override
  final String wireValue;

  static PfsGroup fromValue(String value) {
    for (final item in PfsGroup.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PfsGroup value: $value');
  }
}
