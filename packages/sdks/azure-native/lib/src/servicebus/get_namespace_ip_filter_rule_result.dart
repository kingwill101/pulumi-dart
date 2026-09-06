// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNamespaceIpFilterRule.
class GetNamespaceIpFilterRuleResult {
  /// The IP Filter Action
  final String? action;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// IP Filter name
  final String? filterName;
  /// Resource Id
  final String? id;
  /// IP Mask
  final String? ipMask;
  /// Resource name
  final String? name;
  /// Resource type
  final String? type;

  /// Creates a new [GetNamespaceIpFilterRuleResult].
  /// [action] The IP Filter Action
  /// [azureApiVersion] The Azure API version of the resource.
  /// [filterName] IP Filter name
  /// [id] Resource Id
  /// [ipMask] IP Mask
  /// [name] Resource name
  /// [type] Resource type
  const GetNamespaceIpFilterRuleResult({
    this.action,
    this.azureApiVersion,
    this.filterName,
    this.id,
    this.ipMask,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'azureApiVersion': ?azureApiVersion,
      'filterName': ?filterName,
      'id': ?id,
      'ipMask': ?ipMask,
      'name': ?name,
      'type': ?type,
    };
  }

  factory GetNamespaceIpFilterRuleResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceIpFilterRuleResult(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filterName: (() { final guardedValue = map['filterName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipMask: (() { final guardedValue = map['ipMask']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
