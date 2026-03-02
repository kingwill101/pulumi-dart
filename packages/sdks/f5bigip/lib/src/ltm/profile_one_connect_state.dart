// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProfileOneConnect resources.
class ProfileOneConnectState {
  /// Specifies the profile that you want to use as the parent profile. Your new profile inherits all settings and values from the parent profile specified.
  final pulumi.Input<String>? defaultsFrom;
  /// Specifies the number of seconds that a connection is idle before the connection flow is eligible for deletion. Possible values are `disabled`, `indefinite`, or a numeric value that you specify. The default value is `disabled`
  final pulumi.Input<String>? idleTimeoutOverride;
  /// Controls how connection limits are enforced in conjunction with OneConnect. The default is `None`. Supported Values: `[None,idle,strict]`
  final pulumi.Input<String>? limitType;
  /// Specifies the maximum age in number of seconds allowed for a connection in the connection reuse pool. For any connection with an age higher than this value, the system removes that connection from the reuse pool. The default value is `86400`.
  final pulumi.Input<int>? maxAge;
  /// Specifies the maximum number of times that a server-side connection can be reused. The default value is `1000`.
  final pulumi.Input<int>? maxReuse;
  /// Specifies the maximum number of connections that the system holds in the connection reuse pool. If the pool is already full, then the server-side connection closes after the response is completed. The default value is `10000`.
  final pulumi.Input<int>? maxSize;
  /// Name of Profile should be full path.The full path is the combination of the `partition + profile_name`,For example `/Common/test-oneconnect-profile`.
  final pulumi.Input<String>? name;
  /// Displays the administrative partition within which this profile resides
  final pulumi.Input<String>? partition;
  /// Specify if you want to share the pool, default value is `disabled`.
  final pulumi.Input<String>? sharePools;
  /// Specifies a source IP mask. The default value is `0.0.0.0`. The system applies the value of this option to the source address to determine its eligibility for reuse. A mask of 0.0.0.0 causes the system to share reused connections across all clients. A host mask (all 1's in binary), causes the system to share only those reused connections originating from the same client IP address.
  final pulumi.Input<String>? sourceMask;

  /// Creates a new [ProfileOneConnectState].
  /// [defaultsFrom] Specifies the profile that you want to use as the parent profile. Your new profile inherits all settings and values from the parent profile specified.
  /// [idleTimeoutOverride] Specifies the number of seconds that a connection is idle before the connection flow is eligible for deletion. Possible values are `disabled`, `indefinite`, or a numeric value that you specify. The default value is `disabled`
  /// [limitType] Controls how connection limits are enforced in conjunction with OneConnect. The default is `None`. Supported Values: `[None,idle,strict]`
  /// [maxAge] Specifies the maximum age in number of seconds allowed for a connection in the connection reuse pool. For any connection with an age higher than this value, the system removes that connection from the reuse pool. The default value is `86400`.
  /// [maxReuse] Specifies the maximum number of times that a server-side connection can be reused. The default value is `1000`.
  /// [maxSize] Specifies the maximum number of connections that the system holds in the connection reuse pool. If the pool is already full, then the server-side connection closes after the response is completed. The default value is `10000`.
  /// [name] Name of Profile should be full path.The full path is the combination of the `partition + profile_name`,For example `/Common/test-oneconnect-profile`.
  /// [partition] Displays the administrative partition within which this profile resides
  /// [sharePools] Specify if you want to share the pool, default value is `disabled`.
  /// [sourceMask] Specifies a source IP mask. The default value is `0.0.0.0`. The system applies the value of this option to the source address to determine its eligibility for reuse. A mask of 0.0.0.0 causes the system to share reused connections across all clients. A host mask (all 1's in binary), causes the system to share only those reused connections originating from the same client IP address.
  ProfileOneConnectState({
    this.defaultsFrom,
    this.idleTimeoutOverride,
    this.limitType,
    this.maxAge,
    this.maxReuse,
    this.maxSize,
    this.name,
    this.partition,
    this.sharePools,
    this.sourceMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultsFrom': ?defaultsFrom,
      'idleTimeoutOverride': ?idleTimeoutOverride,
      'limitType': ?limitType,
      'maxAge': ?maxAge,
      'maxReuse': ?maxReuse,
      'maxSize': ?maxSize,
      'name': ?name,
      'partition': ?partition,
      'sharePools': ?sharePools,
      'sourceMask': ?sourceMask,
    };
  }

  factory ProfileOneConnectState.fromMap(Map<String, dynamic> map) {
    return ProfileOneConnectState(
      defaultsFrom: map['defaultsFrom'] == null ? null : (map['defaultsFrom'] as String).input(),
      idleTimeoutOverride: map['idleTimeoutOverride'] == null ? null : (map['idleTimeoutOverride'] as String).input(),
      limitType: map['limitType'] == null ? null : (map['limitType'] as String).input(),
      maxAge: map['maxAge'] == null ? null : (map['maxAge'] as int).input(),
      maxReuse: map['maxReuse'] == null ? null : (map['maxReuse'] as int).input(),
      maxSize: map['maxSize'] == null ? null : (map['maxSize'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      partition: map['partition'] == null ? null : (map['partition'] as String).input(),
      sharePools: map['sharePools'] == null ? null : (map['sharePools'] as String).input(),
      sourceMask: map['sourceMask'] == null ? null : (map['sourceMask'] as String).input(),
    );
  }
}

