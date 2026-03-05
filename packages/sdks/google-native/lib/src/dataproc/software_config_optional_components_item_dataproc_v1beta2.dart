enum SoftwareConfigOptionalComponentsItemDataprocV1beta2 {
  componentUnspecified("COMPONENT_UNSPECIFIED"),
  anaconda("ANACONDA"),
  docker("DOCKER"),
  druid("DRUID"),
  flink("FLINK"),
  hbase("HBASE"),
  hiveWebhcat("HIVE_WEBHCAT"),
  jupyter("JUPYTER"),
  kerberos("KERBEROS"),
  presto("PRESTO"),
  ranger("RANGER"),
  solr("SOLR"),
  zeppelin("ZEPPELIN"),
  zookeeper("ZOOKEEPER");

  const SoftwareConfigOptionalComponentsItemDataprocV1beta2(this.wireValue);
  final String wireValue;

  static SoftwareConfigOptionalComponentsItemDataprocV1beta2 fromValue(String value) {
    for (final item in SoftwareConfigOptionalComponentsItemDataprocV1beta2.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SoftwareConfigOptionalComponentsItemDataprocV1beta2 value: $value');
  }
}

