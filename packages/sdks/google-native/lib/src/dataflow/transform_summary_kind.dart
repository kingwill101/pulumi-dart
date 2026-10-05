import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of transform.
enum TransformSummaryKind implements pulumi.PulumiEnum<String> {
  unknownKind("UNKNOWN_KIND"),
  parDoKind("PAR_DO_KIND"),
  groupByKeyKind("GROUP_BY_KEY_KIND"),
  flattenKind("FLATTEN_KIND"),
  readKind("READ_KIND"),
  writeKind("WRITE_KIND"),
  constantKind("CONSTANT_KIND"),
  singletonKind("SINGLETON_KIND"),
  shuffleKind("SHUFFLE_KIND");

  const TransformSummaryKind(this.wireValue);
  @override
  final String wireValue;

  static TransformSummaryKind fromValue(String value) {
    for (final item in TransformSummaryKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TransformSummaryKind value: $value');
  }
}
