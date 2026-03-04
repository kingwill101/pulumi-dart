// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsClusterControlPlaneRootVolume {
  /// Optional. The number of I/O operations per second (IOPS) to provision for GP3 volume.
  final pulumi.Input<int>? iops;

  /// Optional. The Amazon Resource Name (ARN) of the Customer Managed Key (CMK) used to encrypt AWS EBS volumes. If not specified, the default Amazon managed key associated to the AWS region where this cluster runs will be used.
  final pulumi.Input<String>? kmsKeyArn;

  /// Optional. The size of the volume, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource.
  final pulumi.Input<int>? sizeGib;

  /// Optional. The throughput to provision for the volume, in MiB/s. Only valid if the volume type is GP3. If volume type is gp3 and throughput is not specified, the throughput will defaults to 125.
  final pulumi.Input<int>? throughput;

  /// Optional. Type of the EBS volume. When unspecified, it defaults to GP2 volume. Possible values: VOLUME_TYPE_UNSPECIFIED, GP2, GP3
  final pulumi.Input<String>? volumeType;

  /// Creates a new [AwsClusterControlPlaneRootVolume].
  /// [iops] Optional. The number of I/O operations per second (IOPS) to provision for GP3 volume.
  /// [kmsKeyArn] Optional. The Amazon Resource Name (ARN) of the Customer Managed Key (CMK) used to encrypt AWS EBS volumes. If not specified, the default Amazon managed key associated to the AWS region where this cluster runs will be used.
  /// [sizeGib] Optional. The size of the volume, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource.
  /// [throughput] Optional. The throughput to provision for the volume, in MiB/s. Only valid if the volume type is GP3. If volume type is gp3 and throughput is not specified, the throughput will defaults to 125.
  /// [volumeType] Optional. Type of the EBS volume. When unspecified, it defaults to GP2 volume. Possible values: VOLUME_TYPE_UNSPECIFIED, GP2, GP3
  AwsClusterControlPlaneRootVolume({
    this.iops,
    this.kmsKeyArn,
    this.sizeGib,
    this.throughput,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iops': ?iops,
      'kmsKeyArn': ?kmsKeyArn,
      'sizeGib': ?sizeGib,
      'throughput': ?throughput,
      'volumeType': ?volumeType,
    };
  }

  factory AwsClusterControlPlaneRootVolume.fromMap(Map<String, dynamic> map) {
    return AwsClusterControlPlaneRootVolume(
      iops: (() {
        final guardedValue = map['iops'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      kmsKeyArn: (() {
        final guardedValue = map['kmsKeyArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sizeGib: (() {
        final guardedValue = map['sizeGib'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      throughput: (() {
        final guardedValue = map['throughput'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      volumeType: (() {
        final guardedValue = map['volumeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
