// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRequiredAmlFSSubnetsSize.
class GetRequiredAmlFSSubnetsSizeResult {
  /// The number of available IP addresses that are required for the AML file system.
  final int? filesystemSubnetSize;

  /// Creates a new [GetRequiredAmlFSSubnetsSizeResult].
  /// [filesystemSubnetSize] The number of available IP addresses that are required for the AML file system.
  const GetRequiredAmlFSSubnetsSizeResult({
    this.filesystemSubnetSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filesystemSubnetSize': ?filesystemSubnetSize,
    };
  }

  factory GetRequiredAmlFSSubnetsSizeResult.fromMap(Map<String, dynamic> map) {
    return GetRequiredAmlFSSubnetsSizeResult(
      filesystemSubnetSize: (() { final guardedValue = map['filesystemSubnetSize']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
    );
  }
}
