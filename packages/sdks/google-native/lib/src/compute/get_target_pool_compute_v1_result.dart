// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTargetPool.
class GetTargetPoolComputeV1Result {
  /// The server-defined URL for the resource. This field is applicable only when the containing target pool is serving a forwarding rule as the primary pool, and its failoverRatio field is properly set to a value between [0, 1]. backupPool and failoverRatio together define the fallback behavior of the primary target pool: if the ratio of the healthy instances in the primary pool is at or below failoverRatio, traffic arriving at the load-balanced IP will be directed to the backup pool. In case where failoverRatio and backupPool are not set, or all the instances in the backup pool are unhealthy, the traffic will be directed back to the primary pool in the "force" mode, where traffic will be spread to the healthy instances with the best effort, or to all instances when no instance is healthy.
  final String backupPool;
  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;
  /// This field is applicable only when the containing target pool is serving a forwarding rule as the primary pool (i.e., not as a backup pool to some other target pool). The value of the field must be in [0, 1]. If set, backupPool must also be set. They together define the fallback behavior of the primary target pool: if the ratio of the healthy instances in the primary pool is at or below this number, traffic arriving at the load-balanced IP will be directed to the backup pool. In case where failoverRatio is not set or all the instances in the backup pool are unhealthy, the traffic will be directed back to the primary pool in the "force" mode, where traffic will be spread to the healthy instances with the best effort, or to all instances when no instance is healthy.
  final double failoverRatio;
  /// The URL of the HttpHealthCheck resource. A member instance in this pool is considered healthy if and only if the health checks pass. Only legacy HttpHealthChecks are supported. Only one health check may be specified.
  final List<String> healthChecks;
  /// A list of resource URLs to the virtual machine instances serving this pool. They must live in zones contained in the same region as this pool.
  final List<String> instances;
  /// Type of the resource. Always compute#targetPool for target pools.
  final String kind;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;
  /// URL of the region where the target pool resides.
  final String region;
  /// The resource URL for the security policy associated with this target pool.
  final String securityPolicy;
  /// Server-defined URL for the resource.
  final String selfLink;
  /// Session affinity option, must be one of the following values: NONE: Connections from the same client IP may go to any instance in the pool. CLIENT_IP: Connections from the same client IP will go to the same instance in the pool while that instance remains healthy. CLIENT_IP_PROTO: Connections from the same client IP with the same IP protocol will go to the same instance in the pool while that instance remains healthy.
  final String sessionAffinity;

  /// Creates a new [GetTargetPoolComputeV1Result].
  /// [backupPool] The server-defined URL for the resource. This field is applicable only when the containing target pool is serving a forwarding rule as the primary pool, and its failoverRatio field is properly set to a value between [0, 1]. backupPool and failoverRatio together define the fallback behavior of the primary target pool: if the ratio of the healthy instances in the primary pool is at or below failoverRatio, traffic arriving at the load-balanced IP will be directed to the backup pool. In case where failoverRatio and backupPool are not set, or all the instances in the backup pool are unhealthy, the traffic will be directed back to the primary pool in the "force" mode, where traffic will be spread to the healthy instances with the best effort, or to all instances when no instance is healthy.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [failoverRatio] This field is applicable only when the containing target pool is serving a forwarding rule as the primary pool (i.e., not as a backup pool to some other target pool). The value of the field must be in [0, 1]. If set, backupPool must also be set. They together define the fallback behavior of the primary target pool: if the ratio of the healthy instances in the primary pool is at or below this number, traffic arriving at the load-balanced IP will be directed to the backup pool. In case where failoverRatio is not set or all the instances in the backup pool are unhealthy, the traffic will be directed back to the primary pool in the "force" mode, where traffic will be spread to the healthy instances with the best effort, or to all instances when no instance is healthy.
  /// [healthChecks] The URL of the HttpHealthCheck resource. A member instance in this pool is considered healthy if and only if the health checks pass. Only legacy HttpHealthChecks are supported. Only one health check may be specified.
  /// [instances] A list of resource URLs to the virtual machine instances serving this pool. They must live in zones contained in the same region as this pool.
  /// [kind] Type of the resource. Always compute#targetPool for target pools.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [region] URL of the region where the target pool resides.
  /// [securityPolicy] The resource URL for the security policy associated with this target pool.
  /// [selfLink] Server-defined URL for the resource.
  /// [sessionAffinity] Session affinity option, must be one of the following values: NONE: Connections from the same client IP may go to any instance in the pool. CLIENT_IP: Connections from the same client IP will go to the same instance in the pool while that instance remains healthy. CLIENT_IP_PROTO: Connections from the same client IP with the same IP protocol will go to the same instance in the pool while that instance remains healthy.
  const GetTargetPoolComputeV1Result({
    required this.backupPool,
    required this.creationTimestamp,
    required this.description,
    required this.failoverRatio,
    required this.healthChecks,
    required this.instances,
    required this.kind,
    required this.name,
    required this.region,
    required this.securityPolicy,
    required this.selfLink,
    required this.sessionAffinity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPool': backupPool,
      'creationTimestamp': creationTimestamp,
      'description': description,
      'failoverRatio': failoverRatio,
      'healthChecks': healthChecks,
      'instances': instances,
      'kind': kind,
      'name': name,
      'region': region,
      'securityPolicy': securityPolicy,
      'selfLink': selfLink,
      'sessionAffinity': sessionAffinity,
    };
  }

  factory GetTargetPoolComputeV1Result.fromMap(Map<String, dynamic> map) {
    return GetTargetPoolComputeV1Result(
      backupPool: map['backupPool'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      failoverRatio: map['failoverRatio'] as double,
      healthChecks: (map['healthChecks'] as List).cast<String>(),
      instances: (map['instances'] as List).cast<String>(),
      kind: map['kind'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      securityPolicy: map['securityPolicy'] as String,
      selfLink: map['selfLink'] as String,
      sessionAffinity: map['sessionAffinity'] as String,
    );
  }
}

