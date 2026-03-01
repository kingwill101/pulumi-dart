// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ltm_profile_one_connect_profile_one_connect_args_doc}
/// The set of arguments for ProfileOneConnect.
/// {@endtemplate}
/// {@macro pulumi_ltm_profile_one_connect_profile_one_connect_args_doc}
class ProfileOneConnectArgs {
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
  final pulumi.Input<String> name;
  /// Displays the administrative partition within which this profile resides
  final pulumi.Input<String>? partition;
  /// Specify if you want to share the pool, default value is `disabled`.
  final pulumi.Input<String>? sharePools;
  /// Specifies a source IP mask. The default value is `0.0.0.0`. The system applies the value of this option to the source address to determine its eligibility for reuse. A mask of 0.0.0.0 causes the system to share reused connections across all clients. A host mask (all 1's in binary), causes the system to share only those reused connections originating from the same client IP address.
  final pulumi.Input<String>? sourceMask;

  /// Creates a new [ProfileOneConnectArgs].
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
  ProfileOneConnectArgs({
    pulumi.Output<String>? defaultsFrom,
    pulumi.Output<String>? idleTimeoutOverride,
    pulumi.Output<String>? limitType,
    pulumi.Output<int>? maxAge,
    pulumi.Output<int>? maxReuse,
    pulumi.Output<int>? maxSize,
    required pulumi.Output<String> name,
    pulumi.Output<String>? partition,
    pulumi.Output<String>? sharePools,
    pulumi.Output<String>? sourceMask,
  }) :
      defaultsFrom = pulumi.Input.asOptionalInput<String>(defaultsFrom),
      idleTimeoutOverride = pulumi.Input.asOptionalInput<String>(idleTimeoutOverride),
      limitType = pulumi.Input.asOptionalInput<String>(limitType),
      maxAge = pulumi.Input.asOptionalInput<int>(maxAge),
      maxReuse = pulumi.Input.asOptionalInput<int>(maxReuse),
      maxSize = pulumi.Input.asOptionalInput<int>(maxSize),
      name = pulumi.Input.asInput<String>(name),
      partition = pulumi.Input.asOptionalInput<String>(partition),
      sharePools = pulumi.Input.asOptionalInput<String>(sharePools),
      sourceMask = pulumi.Input.asOptionalInput<String>(sourceMask);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultsFrom': ?defaultsFrom,
      'idleTimeoutOverride': ?idleTimeoutOverride,
      'limitType': ?limitType,
      'maxAge': ?maxAge,
      'maxReuse': ?maxReuse,
      'maxSize': ?maxSize,
      'name': name,
      'partition': ?partition,
      'sharePools': ?sharePools,
      'sourceMask': ?sourceMask,
    };
  }

  factory ProfileOneConnectArgs.fromMap(Map<String, dynamic> map) {
    return ProfileOneConnectArgs(
      defaultsFrom: map['defaultsFrom'] == null ? null : pulumi.Output.create<String>(map['defaultsFrom'] as String),
      idleTimeoutOverride: map['idleTimeoutOverride'] == null ? null : pulumi.Output.create<String>(map['idleTimeoutOverride'] as String),
      limitType: map['limitType'] == null ? null : pulumi.Output.create<String>(map['limitType'] as String),
      maxAge: map['maxAge'] == null ? null : pulumi.Output.create<int>(map['maxAge'] as int),
      maxReuse: map['maxReuse'] == null ? null : pulumi.Output.create<int>(map['maxReuse'] as int),
      maxSize: map['maxSize'] == null ? null : pulumi.Output.create<int>(map['maxSize'] as int),
      name: pulumi.Output.create<String>(map['name'] as String),
      partition: map['partition'] == null ? null : pulumi.Output.create<String>(map['partition'] as String),
      sharePools: map['sharePools'] == null ? null : pulumi.Output.create<String>(map['sharePools'] as String),
      sourceMask: map['sourceMask'] == null ? null : pulumi.Output.create<String>(map['sourceMask'] as String),
    );
  }
}

