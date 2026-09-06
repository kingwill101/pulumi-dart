// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRouteFilterRule.
class GetRouteFilterRuleResult {
  /// The access type of the rule.
  final String? access;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The collection for bgp community values to filter on. e.g. ['12076:5010','12076:5020'].
  final List<String>? communities;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The provisioning state of the route filter rule resource.
  final String? provisioningState;
  /// The rule type of the rule.
  final String? routeFilterRuleType;

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
  const GetRouteFilterRuleResult({
    this.access,
    this.azureApiVersion,
    this.communities,
    this.etag,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.routeFilterRuleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': ?access,
      'azureApiVersion': ?azureApiVersion,
      'communities': ?communities,
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'routeFilterRuleType': ?routeFilterRuleType,
    };
  }

  factory GetRouteFilterRuleResult.fromMap(Map<String, dynamic> map) {
    return GetRouteFilterRuleResult(
      access: (() { final guardedValue = map['access']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      communities: (() { final guardedValue = map['communities']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routeFilterRuleType: (() { final guardedValue = map['routeFilterRuleType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
