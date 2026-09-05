// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRunbook.
class GetRunbookResult {
  final String? automationAccountName;
  /// The content of the Runbook.
  final String? content;
  /// The description of the Runbook.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region where the Runbook exists.
  final String? location;
  /// The activity-level tracing of the Runbook.
  final int? logActivityTraceLevel;
  /// The Progress log option of the Runbook.
  final bool? logProgress;
  /// The Verbose log option of the Runbook.
  final bool? logVerbose;
  final String? name;
  final String? resourceGroupName;
  /// The type of Runbook.
  final String? runbookType;
  /// A mapping of tags assigned to the Runbook.
  final Map<String, String>? tags;

  /// Creates a new [GetRunbookResult].
  /// [automationAccountName] Optional.
  /// [content] The content of the Runbook.
  /// [description] The description of the Runbook.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Runbook exists.
  /// [logActivityTraceLevel] The activity-level tracing of the Runbook.
  /// [logProgress] The Progress log option of the Runbook.
  /// [logVerbose] The Verbose log option of the Runbook.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [runbookType] The type of Runbook.
  /// [tags] A mapping of tags assigned to the Runbook.
  const GetRunbookResult({
    this.automationAccountName,
    this.content,
    this.description,
    this.id,
    this.location,
    this.logActivityTraceLevel,
    this.logProgress,
    this.logVerbose,
    this.name,
    this.resourceGroupName,
    this.runbookType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': ?automationAccountName,
      'content': ?content,
      'description': ?description,
      'id': ?id,
      'location': ?location,
      'logActivityTraceLevel': ?logActivityTraceLevel,
      'logProgress': ?logProgress,
      'logVerbose': ?logVerbose,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'runbookType': ?runbookType,
      'tags': ?tags,
    };
  }

  factory GetRunbookResult.fromMap(Map<String, dynamic> map) {
    return GetRunbookResult(
      automationAccountName: (() { final guardedValue = map['automationAccountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logActivityTraceLevel: (() { final guardedValue = map['logActivityTraceLevel']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      logProgress: (() { final guardedValue = map['logProgress']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      logVerbose: (() { final guardedValue = map['logVerbose']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      runbookType: (() { final guardedValue = map['runbookType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
