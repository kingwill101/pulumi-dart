// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkspaceTable.
class GetWorkspaceTableResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// The billing plan information for the Log Analytics Workspace Table.
  final String? plan;
  /// The table's data retention in days.
  final int? retentionInDays;
  /// The table's total data retention in days.
  final int? totalRetentionInDays;
  final String? workspaceId;

  /// Creates a new [GetWorkspaceTableResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [plan] The billing plan information for the Log Analytics Workspace Table.
  /// [retentionInDays] The table's data retention in days.
  /// [totalRetentionInDays] The table's total data retention in days.
  /// [workspaceId] Optional.
  const GetWorkspaceTableResult({
    this.id,
    this.name,
    this.plan,
    this.retentionInDays,
    this.totalRetentionInDays,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'plan': ?plan,
      'retentionInDays': ?retentionInDays,
      'totalRetentionInDays': ?totalRetentionInDays,
      'workspaceId': ?workspaceId,
    };
  }

  factory GetWorkspaceTableResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceTableResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return guardedValue as String; })(),
      retentionInDays: (() { final guardedValue = map['retentionInDays']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      totalRetentionInDays: (() { final guardedValue = map['totalRetentionInDays']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
