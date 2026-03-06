// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRunbook.
class GetRunbookResult {
  final String automationAccountName;
  /// The content of the Runbook.
  final String content;
  /// The description of the Runbook.
  final String description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region where the Runbook exists.
  final String location;
  /// The activity-level tracing of the Runbook.
  final int logActivityTraceLevel;
  /// The Progress log option of the Runbook.
  final bool logProgress;
  /// The Verbose log option of the Runbook.
  final bool logVerbose;
  final String name;
  final String resourceGroupName;
  /// The type of Runbook.
  final String runbookType;
  /// A mapping of tags assigned to the Runbook.
  final Map<String, String> tags;

  /// Creates a new [GetRunbookResult].
  /// [automationAccountName] Required.
  /// [content] The content of the Runbook.
  /// [description] The description of the Runbook.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Runbook exists.
  /// [logActivityTraceLevel] The activity-level tracing of the Runbook.
  /// [logProgress] The Progress log option of the Runbook.
  /// [logVerbose] The Verbose log option of the Runbook.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [runbookType] The type of Runbook.
  /// [tags] A mapping of tags assigned to the Runbook.
  const GetRunbookResult({
    required this.automationAccountName,
    required this.content,
    required this.description,
    required this.id,
    required this.location,
    required this.logActivityTraceLevel,
    required this.logProgress,
    required this.logVerbose,
    required this.name,
    required this.resourceGroupName,
    required this.runbookType,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'content': content,
      'description': description,
      'id': id,
      'location': location,
      'logActivityTraceLevel': logActivityTraceLevel,
      'logProgress': logProgress,
      'logVerbose': logVerbose,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'runbookType': runbookType,
      'tags': tags,
    };
  }

  factory GetRunbookResult.fromMap(Map<String, dynamic> map) {
    return GetRunbookResult(
      automationAccountName: map['automationAccountName'] as String,
      content: map['content'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      logActivityTraceLevel: map['logActivityTraceLevel'] as int,
      logProgress: map['logProgress'] as bool,
      logVerbose: map['logVerbose'] as bool,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      runbookType: map['runbookType'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

