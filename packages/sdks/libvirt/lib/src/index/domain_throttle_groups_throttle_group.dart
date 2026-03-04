// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainThrottleGroupsThrottleGroup {
  /// Specifies the name for a throttle group configuration.
  final pulumi.Input<String>? groupName;

  /// Configures the read bytes per second limit for the throttle group.
  final pulumi.Input<double>? readBytesSec;

  /// Sets the maximum read bytes per second limit for the throttle group.
  final pulumi.Input<double>? readBytesSecMax;

  /// Configures the maximum read bytes per second limit length for the throttle group.
  final pulumi.Input<double>? readBytesSecMaxLength;

  /// Sets the read IOPS limit for the throttle group.
  final pulumi.Input<double>? readIopsSec;

  /// Configures the maximum read IOPS limit for the throttle group.
  final pulumi.Input<double>? readIopsSecMax;

  /// Sets the maximum read IOPS limit length for the throttle group.
  final pulumi.Input<double>? readIopsSecMaxLength;

  /// Configures the size IOPS limit for the throttle group.
  final pulumi.Input<double>? sizeIopsSec;

  /// Sets the total bytes per second limit for the throttle group.
  final pulumi.Input<double>? totalBytesSec;

  /// Configures the maximum total bytes per second limit for the throttle group.
  final pulumi.Input<double>? totalBytesSecMax;

  /// Configures the maximum number of bytes per second for the throttle group, defining a limit for data transfer over time.
  final pulumi.Input<double>? totalBytesSecMaxLength;

  /// Sets the total number of input/output operations per second allowed for the throttle group, controlling the disk performance.
  final pulumi.Input<double>? totalIopsSec;

  /// Specifies the maximum limit for input/output operations per second for the throttle group, capping potential performance.
  final pulumi.Input<double>? totalIopsSecMax;

  /// Defines the maximum length of input/output operations per second for the throttle group, determining how much of this limit can be used.
  final pulumi.Input<double>? totalIopsSecMaxLength;

  /// Configures the number of bytes per second that can be written by the throttle group, limiting write operations.
  final pulumi.Input<double>? writeBytesSec;

  /// Sets the maximum number of bytes per second that can be written, imposing a cap on write throughput for the throttle group.
  final pulumi.Input<double>? writeBytesSecMax;

  /// Specifies the maximum length of write operations measured in bytes per second for the throttle group.
  final pulumi.Input<double>? writeBytesSecMaxLength;

  /// Configures the total number of write input/output operations per second that the throttle group can perform.
  final pulumi.Input<double>? writeIopsSec;

  /// Sets the maximum limit for write input/output operations per second for the throttle group, restricting performance.
  final pulumi.Input<double>? writeIopsSecMax;

  /// Defines the maximum length of write input/output operations per second for the throttle group, indicating the extent of its limits.
  final pulumi.Input<double>? writeIopsSecMaxLength;

  /// Creates a new [DomainThrottleGroupsThrottleGroup].
  /// [groupName] Specifies the name for a throttle group configuration.
  /// [readBytesSec] Configures the read bytes per second limit for the throttle group.
  /// [readBytesSecMax] Sets the maximum read bytes per second limit for the throttle group.
  /// [readBytesSecMaxLength] Configures the maximum read bytes per second limit length for the throttle group.
  /// [readIopsSec] Sets the read IOPS limit for the throttle group.
  /// [readIopsSecMax] Configures the maximum read IOPS limit for the throttle group.
  /// [readIopsSecMaxLength] Sets the maximum read IOPS limit length for the throttle group.
  /// [sizeIopsSec] Configures the size IOPS limit for the throttle group.
  /// [totalBytesSec] Sets the total bytes per second limit for the throttle group.
  /// [totalBytesSecMax] Configures the maximum total bytes per second limit for the throttle group.
  /// [totalBytesSecMaxLength] Configures the maximum number of bytes per second for the throttle group, defining a limit for data transfer over time.
  /// [totalIopsSec] Sets the total number of input/output operations per second allowed for the throttle group, controlling the disk performance.
  /// [totalIopsSecMax] Specifies the maximum limit for input/output operations per second for the throttle group, capping potential performance.
  /// [totalIopsSecMaxLength] Defines the maximum length of input/output operations per second for the throttle group, determining how much of this limit can be used.
  /// [writeBytesSec] Configures the number of bytes per second that can be written by the throttle group, limiting write operations.
  /// [writeBytesSecMax] Sets the maximum number of bytes per second that can be written, imposing a cap on write throughput for the throttle group.
  /// [writeBytesSecMaxLength] Specifies the maximum length of write operations measured in bytes per second for the throttle group.
  /// [writeIopsSec] Configures the total number of write input/output operations per second that the throttle group can perform.
  /// [writeIopsSecMax] Sets the maximum limit for write input/output operations per second for the throttle group, restricting performance.
  /// [writeIopsSecMaxLength] Defines the maximum length of write input/output operations per second for the throttle group, indicating the extent of its limits.
  DomainThrottleGroupsThrottleGroup({
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

  factory DomainThrottleGroupsThrottleGroup.fromMap(Map<String, dynamic> map) {
    return DomainThrottleGroupsThrottleGroup(
      groupName: (() {
        final guardedValue = map['groupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      readBytesSec: (() {
        final guardedValue = map['readBytesSec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      readBytesSecMax: (() {
        final guardedValue = map['readBytesSecMax'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      readBytesSecMaxLength: (() {
        final guardedValue = map['readBytesSecMaxLength'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      readIopsSec: (() {
        final guardedValue = map['readIopsSec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      readIopsSecMax: (() {
        final guardedValue = map['readIopsSecMax'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      readIopsSecMaxLength: (() {
        final guardedValue = map['readIopsSecMaxLength'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      sizeIopsSec: (() {
        final guardedValue = map['sizeIopsSec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      totalBytesSec: (() {
        final guardedValue = map['totalBytesSec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      totalBytesSecMax: (() {
        final guardedValue = map['totalBytesSecMax'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      totalBytesSecMaxLength: (() {
        final guardedValue = map['totalBytesSecMaxLength'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      totalIopsSec: (() {
        final guardedValue = map['totalIopsSec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      totalIopsSecMax: (() {
        final guardedValue = map['totalIopsSecMax'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      totalIopsSecMaxLength: (() {
        final guardedValue = map['totalIopsSecMaxLength'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      writeBytesSec: (() {
        final guardedValue = map['writeBytesSec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      writeBytesSecMax: (() {
        final guardedValue = map['writeBytesSecMax'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      writeBytesSecMaxLength: (() {
        final guardedValue = map['writeBytesSecMaxLength'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      writeIopsSec: (() {
        final guardedValue = map['writeIopsSec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      writeIopsSecMax: (() {
        final guardedValue = map['writeIopsSecMax'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      writeIopsSecMaxLength: (() {
        final guardedValue = map['writeIopsSecMaxLength'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
