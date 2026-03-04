// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Onprem disk details data.
class DiskDetailsResponse {
  /// The hard disk max size in MB.
  final pulumi.Input<double>? maxSizeMB;

  /// The VHD Id.
  final pulumi.Input<String>? vhdId;

  /// The VHD name.
  final pulumi.Input<String>? vhdName;

  /// The type of the volume.
  final pulumi.Input<String>? vhdType;

  /// Creates a new [DiskDetailsResponse].
  /// [maxSizeMB] The hard disk max size in MB.
  /// [vhdId] The VHD Id.
  /// [vhdName] The VHD name.
  /// [vhdType] The type of the volume.
  DiskDetailsResponse({this.maxSizeMB, this.vhdId, this.vhdName, this.vhdType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxSizeMB': ?maxSizeMB,
      'vhdId': ?vhdId,
      'vhdName': ?vhdName,
      'vhdType': ?vhdType,
    };
  }

  factory DiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DiskDetailsResponse(
      maxSizeMB: (() {
        final guardedValue = map['maxSizeMB'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      vhdId: (() {
        final guardedValue = map['vhdId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vhdName: (() {
        final guardedValue = map['vhdName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vhdType: (() {
        final guardedValue = map['vhdType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
