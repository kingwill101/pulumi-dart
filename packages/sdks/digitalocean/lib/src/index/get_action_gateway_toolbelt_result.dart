// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getActionGatewayToolbelt.
class GetActionGatewayToolbeltResult {
  /// When the version was created.
  final String? createdAt;
  /// The description of the toolbelt.
  final String? description;
  /// The human-readable label of the toolbelt.
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// The version-pinned reference to the toolbelt, such as `search-toolbelt@2`.
  final String? reference;
  /// The reference to the latest version of the toolbelt.
  final String? referenceLatest;
  /// The status of the toolbelt.
  final String? status;
  /// The number of tools in the toolbelt.
  final int? toolCount;
  /// The members of the version, each pinned as `&lt;tool_slug&gt;@&lt;version&gt;`.
  final List<String>? tools;
  /// When the toolbelt was last modified.
  final String? updatedAt;
  final String? version;

  /// Creates a new [GetActionGatewayToolbeltResult].
  /// [createdAt] When the version was created.
  /// [description] The description of the toolbelt.
  /// [displayName] The human-readable label of the toolbelt.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [reference] The version-pinned reference to the toolbelt, such as `search-toolbelt@2`.
  /// [referenceLatest] The reference to the latest version of the toolbelt.
  /// [status] The status of the toolbelt.
  /// [toolCount] The number of tools in the toolbelt.
  /// [tools] The members of the version, each pinned as `&lt;tool_slug&gt;@&lt;version&gt;`.
  /// [updatedAt] When the toolbelt was last modified.
  /// [version] Optional.
  const GetActionGatewayToolbeltResult({
    this.createdAt,
    this.description,
    this.displayName,
    this.id,
    this.name,
    this.reference,
    this.referenceLatest,
    this.status,
    this.toolCount,
    this.tools,
    this.updatedAt,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'description': ?description,
      'displayName': ?displayName,
      'id': ?id,
      'name': ?name,
      'reference': ?reference,
      'referenceLatest': ?referenceLatest,
      'status': ?status,
      'toolCount': ?toolCount,
      'tools': ?tools,
      'updatedAt': ?updatedAt,
      'version': ?version,
    };
  }

  factory GetActionGatewayToolbeltResult.fromMap(Map<String, dynamic> map) {
    return GetActionGatewayToolbeltResult(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reference: (() { final guardedValue = map['reference']; if (guardedValue == null) return null; return guardedValue as String; })(),
      referenceLatest: (() { final guardedValue = map['referenceLatest']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      toolCount: (() { final guardedValue = map['toolCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      tools: (() { final guardedValue = map['tools']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
