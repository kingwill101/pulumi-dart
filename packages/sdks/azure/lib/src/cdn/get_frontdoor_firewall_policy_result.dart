// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFrontdoorFirewallPolicy.
class GetFrontdoorFirewallPolicyResult {
  /// The Front Door Firewall Policy Captcha cookie lifetime in minutes.
  final int captchaCookieExpirationInMinutes;
  /// The enabled state of the Front Door Firewall Policy.
  final bool enabled;
  /// The Front Door Profiles frontend endpoints associated with this Front Door Firewall Policy.
  final List<String> frontendEndpointIds;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Front Door Firewall Policy JavaScript challenge cookie lifetime in minutes.
  final int jsChallengeCookieExpirationInMinutes;
  /// The Front Door Firewall Policy mode.
  final String mode;
  final String name;
  /// The redirect URL for the client.
  final String redirectUrl;
  final String resourceGroupName;
  /// The sku's pricing tier for this Front Door Firewall Policy.
  final String skuName;

  /// Creates a new [GetFrontdoorFirewallPolicyResult].
  /// [captchaCookieExpirationInMinutes] The Front Door Firewall Policy Captcha cookie lifetime in minutes.
  /// [enabled] The enabled state of the Front Door Firewall Policy.
  /// [frontendEndpointIds] The Front Door Profiles frontend endpoints associated with this Front Door Firewall Policy.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [jsChallengeCookieExpirationInMinutes] The Front Door Firewall Policy JavaScript challenge cookie lifetime in minutes.
  /// [mode] The Front Door Firewall Policy mode.
  /// [name] Required.
  /// [redirectUrl] The redirect URL for the client.
  /// [resourceGroupName] Required.
  /// [skuName] The sku's pricing tier for this Front Door Firewall Policy.
  const GetFrontdoorFirewallPolicyResult({
    required this.captchaCookieExpirationInMinutes,
    required this.enabled,
    required this.frontendEndpointIds,
    required this.id,
    required this.jsChallengeCookieExpirationInMinutes,
    required this.mode,
    required this.name,
    required this.redirectUrl,
    required this.resourceGroupName,
    required this.skuName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'captchaCookieExpirationInMinutes': captchaCookieExpirationInMinutes,
      'enabled': enabled,
      'frontendEndpointIds': frontendEndpointIds,
      'id': id,
      'jsChallengeCookieExpirationInMinutes': jsChallengeCookieExpirationInMinutes,
      'mode': mode,
      'name': name,
      'redirectUrl': redirectUrl,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
    };
  }

  factory GetFrontdoorFirewallPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorFirewallPolicyResult(
      captchaCookieExpirationInMinutes: map['captchaCookieExpirationInMinutes'] as int,
      enabled: map['enabled'] as bool,
      frontendEndpointIds: (map['frontendEndpointIds'] as List).cast<String>(),
      id: map['id'] as String,
      jsChallengeCookieExpirationInMinutes: map['jsChallengeCookieExpirationInMinutes'] as int,
      mode: map['mode'] as String,
      name: map['name'] as String,
      redirectUrl: map['redirectUrl'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      skuName: map['skuName'] as String,
    );
  }
}
