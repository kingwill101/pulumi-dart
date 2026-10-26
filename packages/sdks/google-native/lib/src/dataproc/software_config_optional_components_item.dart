import 'package:pulumi/pulumi.dart' as pulumi;

enum SoftwareConfigOptionalComponentsItem implements pulumi.PulumiEnum<String> {
  componentUnspecified("COMPONENT_UNSPECIFIED"),
  anaconda("ANACONDA"),
  docker("DOCKER"),
  druid("DRUID"),
  flink("FLINK"),
  hbase("HBASE"),
  hiveWebhcat("HIVE_WEBHCAT"),
  hudi("HUDI"),
  jupyter("JUPYTER"),
  presto("PRESTO"),
  trino("TRINO"),
  ranger("RANGER"),
  solr("SOLR"),
  zeppelin("ZEPPELIN"),
  zookeeper("ZOOKEEPER");

  const SoftwareConfigOptionalComponentsItem(this.wireValue);
  @override
  final String wireValue;

  static SoftwareConfigOptionalComponentsItem fromValue(String value) {
    for (final item in SoftwareConfigOptionalComponentsItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SoftwareConfigOptionalComponentsItem value: $value');
  }
}
