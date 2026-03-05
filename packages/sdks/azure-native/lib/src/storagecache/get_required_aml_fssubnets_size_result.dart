// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRequiredAmlFSSubnetsSize.
class GetRequiredAmlFSSubnetsSizeResult {
  /// The number of available IP addresses that are required for the AML file system.
  final int? filesystemSubnetSize;

  /// Creates a new [GetRequiredAmlFSSubnetsSizeResult].
  /// [filesystemSubnetSize] The number of available IP addresses that are required for the AML file system.
  GetRequiredAmlFSSubnetsSizeResult({
    this.filesystemSubnetSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filesystemSubnetSize': ?filesystemSubnetSize,
    };
  }

  factory GetRequiredAmlFSSubnetsSizeResult.fromMap(Map<String, dynamic> map) {
    return GetRequiredAmlFSSubnetsSizeResult(
      filesystemSubnetSize: (() { final guardedValue = map['filesystemSubnetSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
    );
  }
}

