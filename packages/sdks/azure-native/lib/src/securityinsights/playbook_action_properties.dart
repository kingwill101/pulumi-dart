// ignore_for_file: unused_element, unnecessary_cast


class PlaybookActionProperties {
  /// The resource id of the playbook resource.
  final String logicAppResourceId;
  /// The tenant id of the playbook resource.
  final String? tenantId;

  /// Creates a new [PlaybookActionProperties].
  /// [logicAppResourceId] The resource id of the playbook resource.
  /// [tenantId] The tenant id of the playbook resource.
  PlaybookActionProperties({
    required this.logicAppResourceId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logicAppResourceId': logicAppResourceId,
      'tenantId': ?tenantId,
    };
  }

  factory PlaybookActionProperties.fromMap(Map<String, dynamic> map) {
    return PlaybookActionProperties(
      logicAppResourceId: map['logicAppResourceId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

