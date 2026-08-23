// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_firewall_policy_custom_rule.dart';
import 'frontdoor_firewall_policy_log_scrubbing.dart';
import 'frontdoor_firewall_policy_managed_rule.dart';

/// Input properties used for looking up and filtering FrontdoorFirewallPolicy resources.
class FrontdoorFirewallPolicyState {
  /// Specifies the Captcha cookie lifetime in minutes. Possible values are between `5` and `1440`. Defaults to`30` minutes.
  ///
  /// &gt; **Note:** The `captchaCookieExpirationInMinutes` field can only be set on `Premium_AzureFrontDoor` sku's. Please see the [Product Documentation](https://learn.microsoft.com/azure/web-application-firewall/afds/captcha-challenge) for more information.
  ///
  /// &gt; **Note:** When you remove the `captchaCookieExpirationInMinutes` field from your configuration, the value will revert to the default of `30` minutes in the Terraform state. This is because Azure manages this setting and Terraform will reflect the actual Azure configuration, which defaults to `30` minutes when not explicitly specified.
  final pulumi.Input<int>? captchaCookieExpirationInMinutes;
  /// If a `customRule` block's action type is `block`, this is the response body. The body must be specified in base64 encoding.
  final pulumi.Input<String>? customBlockResponseBody;
  /// If a `customRule` block's action type is `block`, this is the response status code. Possible values are `200`, `403`, `405`, `406`, `429`, `990`, `991`, `992`, `993`, `994`, `995`, `996`, `997`, `998`, or `999`.
  final pulumi.Input<int>? customBlockResponseStatusCode;
  /// One or more `customRule` blocks as defined below.
  final pulumi.Input<List<FrontdoorFirewallPolicyCustomRule>>? customRules;
  /// Is the Front Door Firewall Policy enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The Front Door Profiles frontend endpoints associated with this Front Door Firewall Policy.
  final pulumi.Input<List<String>>? frontendEndpointIds;
  /// Specifies the JavaScript challenge cookie lifetime in minutes, after which the user will be revalidated. Possible values are between `5` to `1440` minutes. Defaults to `30` minutes.
  ///
  /// &gt; **Note:** The `jsChallengeCookieExpirationInMinutes` field can only be set on `Premium_AzureFrontDoor` sku's. Please see the [Product Documentation](https://learn.microsoft.com/azure/web-application-firewall/waf-javascript-challenge) for more information.
  ///
  /// &gt; **Note:** When you remove the `jsChallengeCookieExpirationInMinutes` field from your configuration, the value will revert to the default of `30` minutes in the Terraform state. This is because Azure manages this setting and Terraform will reflect the actual Azure configuration, which defaults to `30` minutes when not explicitly specified.
  final pulumi.Input<int>? jsChallengeCookieExpirationInMinutes;
  /// A `logScrubbing` block as defined below.
  ///
  /// &gt; **Note:** Setting the`logScrubbing` block is currently in **PREVIEW**. Please see the [Supplemental Terms of Use for Microsoft Azure Previews](https://azure.microsoft.com/support/legal/preview-supplemental-terms/) for legal terms that apply to Azure features that are in beta, preview, or otherwise not yet released into general availability.
  final pulumi.Input<FrontdoorFirewallPolicyLogScrubbing>? logScrubbing;
  /// One or more `managedRule` blocks as defined below.
  final pulumi.Input<List<FrontdoorFirewallPolicyManagedRule>>? managedRules;
  /// The Front Door Firewall Policy mode. Possible values are `Detection`, `Prevention`.
  final pulumi.Input<String>? mode;
  /// The name of the policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// If action type is redirect, this field represents redirect URL for the client.
  final pulumi.Input<String>? redirectUrl;
  /// Should policy managed rules inspect the request body content? Defaults to `true`.
  ///
  /// &gt; **Note:** When run in `Detection` mode, the Front Door Firewall Policy doesn't take any other actions other than monitoring and logging the request and its matched Front Door Rule to the Web Application Firewall logs.
  final pulumi.Input<bool>? requestBodyCheckEnabled;
  /// The name of the resource group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The sku's pricing tier for this Front Door Firewall Policy. Possible values include `Standard_AzureFrontDoor` or `Premium_AzureFrontDoor`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The `Standard_AzureFrontDoor` Front Door Firewall Policy sku may contain `custom` rules only. The `Premium_AzureFrontDoor` Front Door Firewall Policy sku's may contain both `custom` and `managed` rules.
  final pulumi.Input<String>? skuName;
  /// A mapping of tags to assign to the Front Door Firewall Policy.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FrontdoorFirewallPolicyState].
  /// [captchaCookieExpirationInMinutes] Specifies the Captcha cookie lifetime in minutes. Possible values are between `5` and `1440`. Defaults to`30` minutes.
  /// [customBlockResponseBody] If a `customRule` block's action type is `block`, this is the response body. The body must be specified in base64 encoding.
  /// [customBlockResponseStatusCode] If a `customRule` block's action type is `block`, this is the response status code. Possible values are `200`, `403`, `405`, `406`, `429`, `990`, `991`, `992`, `993`, `994`, `995`, `996`, `997`, `998`, or `999`.
  /// [customRules] One or more `customRule` blocks as defined below.
  /// [enabled] Is the Front Door Firewall Policy enabled? Defaults to `true`.
  /// [frontendEndpointIds] The Front Door Profiles frontend endpoints associated with this Front Door Firewall Policy.
  /// [jsChallengeCookieExpirationInMinutes] Specifies the JavaScript challenge cookie lifetime in minutes, after which the user will be revalidated. Possible values are between `5` to `1440` minutes. Defaults to `30` minutes.
  /// [logScrubbing] A `logScrubbing` block as defined below.
  /// [managedRules] One or more `managedRule` blocks as defined below.
  /// [mode] The Front Door Firewall Policy mode. Possible values are `Detection`, `Prevention`.
  /// [name] The name of the policy. Changing this forces a new resource to be created.
  /// [redirectUrl] If action type is redirect, this field represents redirect URL for the client.
  /// [requestBodyCheckEnabled] Should policy managed rules inspect the request body content? Defaults to `true`.
  /// [resourceGroupName] The name of the resource group. Changing this forces a new resource to be created.
  /// [skuName] The sku's pricing tier for this Front Door Firewall Policy. Possible values include `Standard_AzureFrontDoor` or `Premium_AzureFrontDoor`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Front Door Firewall Policy.
  const FrontdoorFirewallPolicyState({
    this.captchaCookieExpirationInMinutes,
    this.customBlockResponseBody,
    this.customBlockResponseStatusCode,
    this.customRules,
    this.enabled,
    this.frontendEndpointIds,
    this.jsChallengeCookieExpirationInMinutes,
    this.logScrubbing,
    this.managedRules,
    this.mode,
    this.name,
    this.redirectUrl,
    this.requestBodyCheckEnabled,
    this.resourceGroupName,
    this.skuName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'captchaCookieExpirationInMinutes': ?captchaCookieExpirationInMinutes,
      'customBlockResponseBody': ?customBlockResponseBody,
      'customBlockResponseStatusCode': ?customBlockResponseStatusCode,
      'customRules': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorFirewallPolicyCustomRule>, List<Map<String, dynamic>>>(customRules, (value) => pulumi.Input.encodeList<FrontdoorFirewallPolicyCustomRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'frontendEndpointIds': ?frontendEndpointIds,
      'jsChallengeCookieExpirationInMinutes': ?jsChallengeCookieExpirationInMinutes,
      'logScrubbing': ?pulumi.Input.mapOptionalInputValue<FrontdoorFirewallPolicyLogScrubbing, Map<String, dynamic>>(logScrubbing, (value) => value.toMap()),
      'managedRules': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorFirewallPolicyManagedRule>, List<Map<String, dynamic>>>(managedRules, (value) => pulumi.Input.encodeList<FrontdoorFirewallPolicyManagedRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mode': ?mode,
      'name': ?name,
      'redirectUrl': ?redirectUrl,
      'requestBodyCheckEnabled': ?requestBodyCheckEnabled,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'tags': ?tags,
    };
  }

  factory FrontdoorFirewallPolicyState.fromMap(Map<String, dynamic> map) {
    return FrontdoorFirewallPolicyState(
      captchaCookieExpirationInMinutes: (() { final guardedValue = map['captchaCookieExpirationInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      customBlockResponseBody: (() { final guardedValue = map['customBlockResponseBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customBlockResponseStatusCode: (() { final guardedValue = map['customBlockResponseStatusCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      customRules: (() { final guardedValue = map['customRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorFirewallPolicyCustomRule>(guardedValue, (value) => FrontdoorFirewallPolicyCustomRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      frontendEndpointIds: (() { final guardedValue = map['frontendEndpointIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      jsChallengeCookieExpirationInMinutes: (() { final guardedValue = map['jsChallengeCookieExpirationInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      logScrubbing: (() { final guardedValue = map['logScrubbing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrontdoorFirewallPolicyLogScrubbing.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managedRules: (() { final guardedValue = map['managedRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorFirewallPolicyManagedRule>(guardedValue, (value) => FrontdoorFirewallPolicyManagedRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectUrl: (() { final guardedValue = map['redirectUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestBodyCheckEnabled: (() { final guardedValue = map['requestBodyCheckEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
