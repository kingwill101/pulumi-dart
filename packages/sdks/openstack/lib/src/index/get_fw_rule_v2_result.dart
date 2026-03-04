// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getFwRuleV2.
class GetFwRuleV2Result {
  /// See Argument Reference above.
  final String? action;

  /// See Argument Reference above.
  final String? description;

  /// See Argument Reference above.
  final String? destinationIpAddress;

  /// See Argument Reference above.
  final String? destinationPort;

  /// See Argument Reference above.
  final bool enabled;

  /// The ID of the firewall policy the rule belongs to.
  final List<String> firewallPolicyIds;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// See Argument Reference above.
  final int? ipVersion;

  /// See Argument Reference above.
  final String? name;

  /// See Argument Reference above.
  final String projectId;

  /// See Argument Reference above.
  final String? protocol;

  /// See Argument Reference above.
  final String region;

  /// See Argument Reference above.
  final String? ruleId;

  /// See Argument Reference above.
  final bool shared;

  /// See Argument Reference above.
  final String? sourceIpAddress;

  /// See Argument Reference above.
  final String? sourcePort;

  /// See Argument Reference above.
  final String tenantId;

  /// Creates a new [GetFwRuleV2Result].
  /// [action] See Argument Reference above.
  /// [description] See Argument Reference above.
  /// [destinationIpAddress] See Argument Reference above.
  /// [destinationPort] See Argument Reference above.
  /// [enabled] See Argument Reference above.
  /// [firewallPolicyIds] The ID of the firewall policy the rule belongs to.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipVersion] See Argument Reference above.
  /// [name] See Argument Reference above.
  /// [projectId] See Argument Reference above.
  /// [protocol] See Argument Reference above.
  /// [region] See Argument Reference above.
  /// [ruleId] See Argument Reference above.
  /// [shared] See Argument Reference above.
  /// [sourceIpAddress] See Argument Reference above.
  /// [sourcePort] See Argument Reference above.
  /// [tenantId] See Argument Reference above.
  GetFwRuleV2Result({
    this.action,
    this.description,
    this.destinationIpAddress,
    this.destinationPort,
    required this.enabled,
    required this.firewallPolicyIds,
    required this.id,
    this.ipVersion,
    this.name,
    required this.projectId,
    this.protocol,
    required this.region,
    this.ruleId,
    required this.shared,
    this.sourceIpAddress,
    this.sourcePort,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'description': ?description,
      'destinationIpAddress': ?destinationIpAddress,
      'destinationPort': ?destinationPort,
      'enabled': enabled,
      'firewallPolicyIds': firewallPolicyIds,
      'id': id,
      'ipVersion': ?ipVersion,
      'name': ?name,
      'projectId': projectId,
      'protocol': ?protocol,
      'region': region,
      'ruleId': ?ruleId,
      'shared': shared,
      'sourceIpAddress': ?sourceIpAddress,
      'sourcePort': ?sourcePort,
      'tenantId': tenantId,
    };
  }

  factory GetFwRuleV2Result.fromMap(Map<String, dynamic> map) {
    return GetFwRuleV2Result(
      action: (() {
        final guardedValue = map['action'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      destinationIpAddress: (() {
        final guardedValue = map['destinationIpAddress'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      destinationPort: (() {
        final guardedValue = map['destinationPort'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      enabled: map['enabled'] as bool,
      firewallPolicyIds: (map['firewallPolicyIds'] as List).cast<String>(),
      id: map['id'] as String,
      ipVersion: (() {
        final guardedValue = map['ipVersion'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      projectId: map['projectId'] as String,
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      region: map['region'] as String,
      ruleId: (() {
        final guardedValue = map['ruleId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      shared: map['shared'] as bool,
      sourceIpAddress: (() {
        final guardedValue = map['sourceIpAddress'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      sourcePort: (() {
        final guardedValue = map['sourcePort'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      tenantId: map['tenantId'] as String,
    );
  }
}
