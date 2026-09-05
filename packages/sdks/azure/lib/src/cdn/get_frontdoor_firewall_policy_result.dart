// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFrontdoorFirewallPolicy.
class GetFrontdoorFirewallPolicyResult {
  /// The Front Door Firewall Policy Captcha cookie lifetime in minutes.
  final int? captchaCookieExpirationInMinutes;
  /// The enabled state of the Front Door Firewall Policy.
  final bool? enabled;
  /// The Front Door Profiles frontend endpoints associated with this Front Door Firewall Policy.
  final List<String>? frontendEndpointIds;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Front Door Firewall Policy JavaScript challenge cookie lifetime in minutes.
  final int? jsChallengeCookieExpirationInMinutes;
  /// The Front Door Firewall Policy mode.
  final String? mode;
  final String? name;
  /// The redirect URL for the client.
  final String? redirectUrl;
  final String? resourceGroupName;
  /// The sku's pricing tier for this Front Door Firewall Policy.
  final String? skuName;

  /// Creates a new [GetFrontdoorFirewallPolicyResult].
  /// [captchaCookieExpirationInMinutes] The Front Door Firewall Policy Captcha cookie lifetime in minutes.
  /// [enabled] The enabled state of the Front Door Firewall Policy.
  /// [frontendEndpointIds] The Front Door Profiles frontend endpoints associated with this Front Door Firewall Policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [jsChallengeCookieExpirationInMinutes] The Front Door Firewall Policy JavaScript challenge cookie lifetime in minutes.
  /// [mode] The Front Door Firewall Policy mode.
  /// [name] Optional.
  /// [redirectUrl] The redirect URL for the client.
  /// [resourceGroupName] Optional.
  /// [skuName] The sku's pricing tier for this Front Door Firewall Policy.
  const GetFrontdoorFirewallPolicyResult({
    this.captchaCookieExpirationInMinutes,
    this.enabled,
    this.frontendEndpointIds,
    this.id,
    this.jsChallengeCookieExpirationInMinutes,
    this.mode,
    this.name,
    this.redirectUrl,
    this.resourceGroupName,
    this.skuName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'captchaCookieExpirationInMinutes': ?captchaCookieExpirationInMinutes,
      'enabled': ?enabled,
      'frontendEndpointIds': ?frontendEndpointIds,
      'id': ?id,
      'jsChallengeCookieExpirationInMinutes': ?jsChallengeCookieExpirationInMinutes,
      'mode': ?mode,
      'name': ?name,
      'redirectUrl': ?redirectUrl,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
    };
  }

  factory GetFrontdoorFirewallPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorFirewallPolicyResult(
      captchaCookieExpirationInMinutes: (() { final guardedValue = map['captchaCookieExpirationInMinutes']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      frontendEndpointIds: (() { final guardedValue = map['frontendEndpointIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      jsChallengeCookieExpirationInMinutes: (() { final guardedValue = map['jsChallengeCookieExpirationInMinutes']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      redirectUrl: (() { final guardedValue = map['redirectUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
