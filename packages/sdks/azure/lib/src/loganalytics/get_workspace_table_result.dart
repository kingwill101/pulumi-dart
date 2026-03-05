// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getWorkspaceTable.
class GetWorkspaceTableResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;

  /// The billing plan information for the Log Analytics Workspace Table.
  final String plan;

  /// The table's data retention in days.
  final int retentionInDays;

  /// The table's total data retention in days.
  final int totalRetentionInDays;
  final String workspaceId;

  /// Creates a new [GetWorkspaceTableResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [plan] The billing plan information for the Log Analytics Workspace Table.
  /// [retentionInDays] The table's data retention in days.
  /// [totalRetentionInDays] The table's total data retention in days.
  /// [workspaceId] Required.
  GetWorkspaceTableResult({
    required this.id,
    required this.name,
    required this.plan,
    required this.retentionInDays,
    required this.totalRetentionInDays,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'plan': plan,
      'retentionInDays': retentionInDays,
      'totalRetentionInDays': totalRetentionInDays,
      'workspaceId': workspaceId,
    };
  }

  factory GetWorkspaceTableResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceTableResult(
      id: map['id'] as String,
      name: map['name'] as String,
      plan: map['plan'] as String,
      retentionInDays: map['retentionInDays'] as int,
      totalRetentionInDays: map['totalRetentionInDays'] as int,
      workspaceId: map['workspaceId'] as String,
    );
  }
}
