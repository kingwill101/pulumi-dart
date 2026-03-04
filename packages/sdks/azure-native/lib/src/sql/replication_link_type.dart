/// Link type (GEO, NAMED, STANDBY). Update operation does not support NAMED.
enum ReplicationLinkType {
  valueGEO("GEO"),
  valueNAMED("NAMED"),
  valueSTANDBY("STANDBY");

  const ReplicationLinkType(this.wireValue);
  final String wireValue;

  static ReplicationLinkType fromValue(String value) {
    for (final item in ReplicationLinkType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReplicationLinkType value: $value');
  }
}
