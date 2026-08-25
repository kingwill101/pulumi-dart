// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getProject.
class GetProjectResult {
  final bool? autoCreateNetwork;
  final String? billingAccount;
  final String? deletionPolicy;
  final Map<String, String>? effectiveLabels;
  final String? folderId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final Map<String, String>? labels;
  final String? name;
  /// The numeric identifier of the project.
  final String? number;
  final String? orgId;
  final String? projectId;
  final Map<String, String>? pulumiLabels;
  final Map<String, String>? tags;

  /// Creates a new [GetProjectResult].
  /// [autoCreateNetwork] Optional.
  /// [billingAccount] Optional.
  /// [deletionPolicy] Optional.
  /// [effectiveLabels] Optional.
  /// [folderId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Optional.
  /// [name] Optional.
  /// [number] The numeric identifier of the project.
  /// [orgId] Optional.
  /// [projectId] Optional.
  /// [pulumiLabels] Optional.
  /// [tags] Optional.
  const GetProjectResult({
    this.autoCreateNetwork,
    this.billingAccount,
    this.deletionPolicy,
    this.effectiveLabels,
    this.folderId,
    this.id,
    this.labels,
    this.name,
    this.number,
    this.orgId,
    this.projectId,
    this.pulumiLabels,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCreateNetwork': ?autoCreateNetwork,
      'billingAccount': ?billingAccount,
      'deletionPolicy': ?deletionPolicy,
      'effectiveLabels': ?effectiveLabels,
      'folderId': ?folderId,
      'id': ?id,
      'labels': ?labels,
      'name': ?name,
      'number': ?number,
      'orgId': ?orgId,
      'projectId': ?projectId,
      'pulumiLabels': ?pulumiLabels,
      'tags': ?tags,
    };
  }

  factory GetProjectResult.fromMap(Map<String, dynamic> map) {
    return GetProjectResult(
      autoCreateNetwork: (() { final guardedValue = map['autoCreateNetwork']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      billingAccount: (() { final guardedValue = map['billingAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      folderId: (() { final guardedValue = map['folderId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      number: (() { final guardedValue = map['number']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orgId: (() { final guardedValue = map['orgId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
