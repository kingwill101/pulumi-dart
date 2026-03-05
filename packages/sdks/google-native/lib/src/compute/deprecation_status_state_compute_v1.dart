/// The deprecation state of this resource. This can be ACTIVE, DEPRECATED, OBSOLETE, or DELETED. Operations which communicate the end of life date for an image, can use ACTIVE. Operations which create a new resource using a DEPRECATED resource will return successfully, but with a warning indicating the deprecated resource and recommending its replacement. Operations which use OBSOLETE or DELETED resources will be rejected and result in an error.
enum DeprecationStatusStateComputeV1 {
  active("ACTIVE"),
  deleted("DELETED"),
  deprecated("DEPRECATED"),
  obsolete("OBSOLETE");

  const DeprecationStatusStateComputeV1(this.wireValue);
  final String wireValue;

  static DeprecationStatusStateComputeV1 fromValue(String value) {
    for (final item in DeprecationStatusStateComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeprecationStatusStateComputeV1 value: $value');
  }
}

