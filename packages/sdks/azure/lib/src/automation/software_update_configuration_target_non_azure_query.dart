// ignore_for_file: unused_element, unnecessary_cast


class SoftwareUpdateConfigurationTargetNonAzureQuery {
  /// Specifies the Log Analytics save search name.
  final String? functionAlias;
  /// The workspace id for Log Analytics in which the saved search in.
  final String? workspaceId;

  /// Creates a new [SoftwareUpdateConfigurationTargetNonAzureQuery].
  /// [functionAlias] Specifies the Log Analytics save search name.
  /// [workspaceId] The workspace id for Log Analytics in which the saved search in.
  SoftwareUpdateConfigurationTargetNonAzureQuery({
    this.functionAlias,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionAlias': ?functionAlias,
      'workspaceId': ?workspaceId,
    };
  }

  factory SoftwareUpdateConfigurationTargetNonAzureQuery.fromMap(Map<String, dynamic> map) {
    return SoftwareUpdateConfigurationTargetNonAzureQuery(
      functionAlias: map['functionAlias'] == null ? null : map['functionAlias'] as String,
      workspaceId: map['workspaceId'] == null ? null : map['workspaceId'] as String,
    );
  }
}

