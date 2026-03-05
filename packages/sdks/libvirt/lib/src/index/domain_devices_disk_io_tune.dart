// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskIoTune {
  /// Specifies the name of the group for tuning parameters, organizing settings related to disk I/O performance.
  final pulumi.Input<String>? groupName;
  /// Sets the maximum number of read bytes per second for the disk, regulating its data throughput.
  final pulumi.Input<double>? readBytesSec;
  /// Configures the maximum read bytes per second limit, further controlling the disk's data transfer rate.
  final pulumi.Input<double>? readBytesSecMax;
  /// Defines the length of maximum read bytes per second setting, detailing how long this limit is effective.
  final pulumi.Input<double>? readBytesSecMaxLength;
  /// Specifies the maximum number of read I/O operations per second for the disk, controlling its responsiveness.
  final pulumi.Input<double>? readIopsSec;
  /// Sets the upper limit for read IOPS on the disk, refining its input/output performance.
  final pulumi.Input<double>? readIopsSecMax;
  /// Configures the effective duration for the maximum read IOPS limit.
  final pulumi.Input<double>? readIopsSecMaxLength;
  /// Defines the size-related performance in IOPS for the disk, optimizing access based on data size.
  final pulumi.Input<double>? sizeIopsSec;
  /// Sets the overall maximum bytes transfer rate for all operations on the disk.
  final pulumi.Input<double>? totalBytesSec;
  /// Specifies the maximum limit on total bytes per second across all I/O operations for the disk.
  final pulumi.Input<double>? totalBytesSecMax;
  /// Describes the duration that the maximum total bytes per second setting is enforced on the disk.
  final pulumi.Input<double>? totalBytesSecMaxLength;
  /// Configures the overall maximum IOPS for the disk, controlling the number of operations performed over time.
  final pulumi.Input<double>? totalIopsSec;
  /// Sets the maximum IOPS limit for all operations handled by the disk.
  final pulumi.Input<double>? totalIopsSecMax;
  /// Defines how long the total IOPS limit is maintained during operations on the disk.
  final pulumi.Input<double>? totalIopsSecMaxLength;
  /// Configures the maximum number of bytes written per second for the disk, managing data output rates.
  final pulumi.Input<double>? writeBytesSec;
  /// Sets the maximum write bytes per second limit, controlling the disk's writing capability.
  final pulumi.Input<double>? writeBytesSecMax;
  /// Specifies the effective length for the maximum write bytes per second setting.
  final pulumi.Input<double>? writeBytesSecMaxLength;
  /// Defines the maximum number of write I/O operations per second for the disk, influencing its performance.
  final pulumi.Input<double>? writeIopsSec;
  /// Sets the upper limit for write IOPS on the disk, adjusting its output operations.
  final pulumi.Input<double>? writeIopsSecMax;
  /// Configures the effective duration for the maximum write IOPS limit.
  final pulumi.Input<double>? writeIopsSecMaxLength;

  /// Creates a new [DomainDevicesDiskIoTune].
  /// [groupName] Specifies the name of the group for tuning parameters, organizing settings related to disk I/O performance.
  /// [readBytesSec] Sets the maximum number of read bytes per second for the disk, regulating its data throughput.
  /// [readBytesSecMax] Configures the maximum read bytes per second limit, further controlling the disk's data transfer rate.
  /// [readBytesSecMaxLength] Defines the length of maximum read bytes per second setting, detailing how long this limit is effective.
  /// [readIopsSec] Specifies the maximum number of read I/O operations per second for the disk, controlling its responsiveness.
  /// [readIopsSecMax] Sets the upper limit for read IOPS on the disk, refining its input/output performance.
  /// [readIopsSecMaxLength] Configures the effective duration for the maximum read IOPS limit.
  /// [sizeIopsSec] Defines the size-related performance in IOPS for the disk, optimizing access based on data size.
  /// [totalBytesSec] Sets the overall maximum bytes transfer rate for all operations on the disk.
  /// [totalBytesSecMax] Specifies the maximum limit on total bytes per second across all I/O operations for the disk.
  /// [totalBytesSecMaxLength] Describes the duration that the maximum total bytes per second setting is enforced on the disk.
  /// [totalIopsSec] Configures the overall maximum IOPS for the disk, controlling the number of operations performed over time.
  /// [totalIopsSecMax] Sets the maximum IOPS limit for all operations handled by the disk.
  /// [totalIopsSecMaxLength] Defines how long the total IOPS limit is maintained during operations on the disk.
  /// [writeBytesSec] Configures the maximum number of bytes written per second for the disk, managing data output rates.
  /// [writeBytesSecMax] Sets the maximum write bytes per second limit, controlling the disk's writing capability.
  /// [writeBytesSecMaxLength] Specifies the effective length for the maximum write bytes per second setting.
  /// [writeIopsSec] Defines the maximum number of write I/O operations per second for the disk, influencing its performance.
  /// [writeIopsSecMax] Sets the upper limit for write IOPS on the disk, adjusting its output operations.
  /// [writeIopsSecMaxLength] Configures the effective duration for the maximum write IOPS limit.
  DomainDevicesDiskIoTune({
    this.groupName,
    this.readBytesSec,
    this.readBytesSecMax,
    this.readBytesSecMaxLength,
    this.readIopsSec,
    this.readIopsSecMax,
    this.readIopsSecMaxLength,
    this.sizeIopsSec,
    this.totalBytesSec,
    this.totalBytesSecMax,
    this.totalBytesSecMaxLength,
    this.totalIopsSec,
    this.totalIopsSecMax,
    this.totalIopsSecMaxLength,
    this.writeBytesSec,
    this.writeBytesSecMax,
    this.writeBytesSecMaxLength,
    this.writeIopsSec,
    this.writeIopsSecMax,
    this.writeIopsSecMaxLength,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': ?groupName,
      'readBytesSec': ?readBytesSec,
      'readBytesSecMax': ?readBytesSecMax,
      'readBytesSecMaxLength': ?readBytesSecMaxLength,
      'readIopsSec': ?readIopsSec,
      'readIopsSecMax': ?readIopsSecMax,
      'readIopsSecMaxLength': ?readIopsSecMaxLength,
      'sizeIopsSec': ?sizeIopsSec,
      'totalBytesSec': ?totalBytesSec,
      'totalBytesSecMax': ?totalBytesSecMax,
      'totalBytesSecMaxLength': ?totalBytesSecMaxLength,
      'totalIopsSec': ?totalIopsSec,
      'totalIopsSecMax': ?totalIopsSecMax,
      'totalIopsSecMaxLength': ?totalIopsSecMaxLength,
      'writeBytesSec': ?writeBytesSec,
      'writeBytesSecMax': ?writeBytesSecMax,
      'writeBytesSecMaxLength': ?writeBytesSecMaxLength,
      'writeIopsSec': ?writeIopsSec,
      'writeIopsSecMax': ?writeIopsSecMax,
      'writeIopsSecMaxLength': ?writeIopsSecMaxLength,
    };
  }

  factory DomainDevicesDiskIoTune.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskIoTune(
      groupName: (() { final guardedValue = map['groupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readBytesSec: (() { final guardedValue = map['readBytesSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      readBytesSecMax: (() { final guardedValue = map['readBytesSecMax']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      readBytesSecMaxLength: (() { final guardedValue = map['readBytesSecMaxLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      readIopsSec: (() { final guardedValue = map['readIopsSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      readIopsSecMax: (() { final guardedValue = map['readIopsSecMax']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      readIopsSecMaxLength: (() { final guardedValue = map['readIopsSecMaxLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      sizeIopsSec: (() { final guardedValue = map['sizeIopsSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      totalBytesSec: (() { final guardedValue = map['totalBytesSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      totalBytesSecMax: (() { final guardedValue = map['totalBytesSecMax']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      totalBytesSecMaxLength: (() { final guardedValue = map['totalBytesSecMaxLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      totalIopsSec: (() { final guardedValue = map['totalIopsSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      totalIopsSecMax: (() { final guardedValue = map['totalIopsSecMax']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      totalIopsSecMaxLength: (() { final guardedValue = map['totalIopsSecMaxLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      writeBytesSec: (() { final guardedValue = map['writeBytesSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      writeBytesSecMax: (() { final guardedValue = map['writeBytesSecMax']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      writeBytesSecMaxLength: (() { final guardedValue = map['writeBytesSecMaxLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      writeIopsSec: (() { final guardedValue = map['writeIopsSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      writeIopsSecMax: (() { final guardedValue = map['writeIopsSecMax']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      writeIopsSecMaxLength: (() { final guardedValue = map['writeIopsSecMaxLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

