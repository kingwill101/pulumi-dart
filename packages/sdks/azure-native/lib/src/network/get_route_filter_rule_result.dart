// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRouteFilterRule.
class GetRouteFilterRuleResult {
  /// The access type of the rule.
  final String access;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The collection for bgp community values to filter on. e.g. ['12076:5010','12076:5020'].
  final List<String> communities;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The provisioning state of the route filter rule resource.
  final String provisioningState;
  /// The rule type of the rule.
  final String routeFilterRuleType;

  /// Creates a new [GetRouteFilterRuleResult].
  /// [access] The access type of the rule.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [communities] The collection for bgp community values to filter on. e.g. ['12076:5010','12076:5020'].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the route filter rule resource.
  /// [routeFilterRuleType] The rule type of the rule.
  GetRouteFilterRuleResult({
    required this.access,
    required this.azureApiVersion,
    required this.communities,
    required this.etag,
    this.id,
    this.location,
    this.name,
    required this.provisioningState,
    required this.routeFilterRuleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': access,
      'azureApiVersion': azureApiVersion,
      'communities': communities,
      'etag': etag,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': provisioningState,
      'routeFilterRuleType': routeFilterRuleType,
    };
  }

  factory GetRouteFilterRuleResult.fromMap(Map<String, dynamic> map) {
    return GetRouteFilterRuleResult(
      access: map['access'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      communities: (map['communities'] as List).cast<String>(),
      etag: map['etag'] as String,
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      routeFilterRuleType: map['routeFilterRuleType'] as String,
    );
  }
}

