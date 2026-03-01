// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_firewall_policy_custom_rule.dart';
import 'frontdoor_firewall_policy_log_scrubbing.dart';
import 'frontdoor_firewall_policy_managed_rule.dart';

/// {@template pulumi_cdn_frontdoor_firewall_policy_frontdoor_firewall_policy_args_doc}
/// The set of arguments for FrontdoorFirewallPolicy.
/// {@endtemplate}
/// {@macro pulumi_cdn_frontdoor_firewall_policy_frontdoor_firewall_policy_args_doc}
class FrontdoorFirewallPolicyArgs {
  /// Specifies the Captcha cookie lifetime in minutes. Possible values are between `5` and `1440`. Defaults to`30` minutes.
  ///
  /// > **Note:** The `captcha_cookie_expiration_in_minutes` field can only be set on `Premium_AzureFrontDoor` sku's. Please see the [Product Documentation](https://learn.microsoft.com/azure/web-application-firewall/afds/captcha-challenge) for more information.
  ///
  /// > **Note:** When you remove the `captcha_cookie_expiration_in_minutes` field from your configuration, the value will revert to the default of `30` minutes in the Terraform state. This is because Azure manages this setting and Terraform will reflect the actual Azure configuration, which defaults to `30` minutes when not explicitly specified.
  final pulumi.Input<int>? captchaCookieExpirationInMinutes;
  /// If a `custom_rule` block's action type is `block`, this is the response body. The body must be specified in base64 encoding.
  final pulumi.Input<String>? customBlockResponseBody;
  /// If a `custom_rule` block's action type is `block`, this is the response status code. Possible values are `200`, `403`, `405`, `406`, or `429`.
  final pulumi.Input<int>? customBlockResponseStatusCode;
  /// One or more `custom_rule` blocks as defined below.
  final pulumi.Input<List<FrontdoorFirewallPolicyCustomRule>>? customRules;
  /// Is the Front Door Firewall Policy enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Specifies the JavaScript challenge cookie lifetime in minutes, after which the user will be revalidated. Possible values are between `5` to `1440` minutes. Defaults to `30` minutes.
  ///
  /// > **Note:** The `js_challenge_cookie_expiration_in_minutes` field can only be set on `Premium_AzureFrontDoor` sku's. Please see the [Product Documentation](https://learn.microsoft.com/azure/web-application-firewall/waf-javascript-challenge) for more information.
  ///
  /// > **Note:** When you remove the `js_challenge_cookie_expiration_in_minutes` field from your configuration, the value will revert to the default of `30` minutes in the Terraform state. This is because Azure manages this setting and Terraform will reflect the actual Azure configuration, which defaults to `30` minutes when not explicitly specified.
  final pulumi.Input<int>? jsChallengeCookieExpirationInMinutes;
  /// A `log_scrubbing` block as defined below.
  ///
  /// !> **Note:** Setting the`log_scrubbing` block is currently in **PREVIEW**. Please see the [Supplemental Terms of Use for Microsoft Azure Previews](https://azure.microsoft.com/support/legal/preview-supplemental-terms/) for legal terms that apply to Azure features that are in beta, preview, or otherwise not yet released into general availability.
  final pulumi.Input<FrontdoorFirewallPolicyLogScrubbing>? logScrubbing;
  /// One or more `managed_rule` blocks as defined below.
  final pulumi.Input<List<FrontdoorFirewallPolicyManagedRule>>? managedRules;
  /// The Front Door Firewall Policy mode. Possible values are `Detection`, `Prevention`.
  final pulumi.Input<String> mode;
  /// The name of the policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// If action type is redirect, this field represents redirect URL for the client.
  final pulumi.Input<String>? redirectUrl;
  /// Should policy managed rules inspect the request body content? Defaults to `true`.
  ///
  /// > **Note:** When run in `Detection` mode, the Front Door Firewall Policy doesn't take any other actions other than monitoring and logging the request and its matched Front Door Rule to the Web Application Firewall logs.
  final pulumi.Input<bool>? requestBodyCheckEnabled;
  /// The name of the resource group. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The sku's pricing tier for this Front Door Firewall Policy. Possible values include `Standard_AzureFrontDoor` or `Premium_AzureFrontDoor`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The `Standard_AzureFrontDoor` Front Door Firewall Policy sku may contain `custom` rules only. The `Premium_AzureFrontDoor` Front Door Firewall Policy sku's may contain both `custom` and `managed` rules.
  final pulumi.Input<String> skuName;
  /// A mapping of tags to assign to the Front Door Firewall Policy.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FrontdoorFirewallPolicyArgs].
  /// [captchaCookieExpirationInMinutes] Specifies the Captcha cookie lifetime in minutes. Possible values are between `5` and `1440`. Defaults to`30` minutes.
  /// [customBlockResponseBody] If a `custom_rule` block's action type is `block`, this is the response body. The body must be specified in base64 encoding.
  /// [customBlockResponseStatusCode] If a `custom_rule` block's action type is `block`, this is the response status code. Possible values are `200`, `403`, `405`, `406`, or `429`.
  /// [customRules] One or more `custom_rule` blocks as defined below.
  /// [enabled] Is the Front Door Firewall Policy enabled? Defaults to `true`.
  /// [jsChallengeCookieExpirationInMinutes] Specifies the JavaScript challenge cookie lifetime in minutes, after which the user will be revalidated. Possible values are between `5` to `1440` minutes. Defaults to `30` minutes.
  /// [logScrubbing] A `log_scrubbing` block as defined below.
  /// [managedRules] One or more `managed_rule` blocks as defined below.
  /// [mode] The Front Door Firewall Policy mode. Possible values are `Detection`, `Prevention`.
  /// [name] The name of the policy. Changing this forces a new resource to be created.
  /// [redirectUrl] If action type is redirect, this field represents redirect URL for the client.
  /// [requestBodyCheckEnabled] Should policy managed rules inspect the request body content? Defaults to `true`.
  /// [resourceGroupName] The name of the resource group. Changing this forces a new resource to be created.
  /// [skuName] The sku's pricing tier for this Front Door Firewall Policy. Possible values include `Standard_AzureFrontDoor` or `Premium_AzureFrontDoor`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Front Door Firewall Policy.
  FrontdoorFirewallPolicyArgs({
    pulumi.Output<int>? captchaCookieExpirationInMinutes,
    pulumi.Output<String>? customBlockResponseBody,
    pulumi.Output<int>? customBlockResponseStatusCode,
    pulumi.Output<List<FrontdoorFirewallPolicyCustomRule>>? customRules,
    pulumi.Output<bool>? enabled,
    pulumi.Output<int>? jsChallengeCookieExpirationInMinutes,
    pulumi.Output<FrontdoorFirewallPolicyLogScrubbing>? logScrubbing,
    pulumi.Output<List<FrontdoorFirewallPolicyManagedRule>>? managedRules,
    required pulumi.Output<String> mode,
    pulumi.Output<String>? name,
    pulumi.Output<String>? redirectUrl,
    pulumi.Output<bool>? requestBodyCheckEnabled,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> skuName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      captchaCookieExpirationInMinutes = pulumi.Input.asOptionalInput<int>(captchaCookieExpirationInMinutes),
      customBlockResponseBody = pulumi.Input.asOptionalInput<String>(customBlockResponseBody),
      customBlockResponseStatusCode = pulumi.Input.asOptionalInput<int>(customBlockResponseStatusCode),
      customRules = pulumi.Input.asOptionalInput<List<FrontdoorFirewallPolicyCustomRule>>(customRules),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      jsChallengeCookieExpirationInMinutes = pulumi.Input.asOptionalInput<int>(jsChallengeCookieExpirationInMinutes),
      logScrubbing = pulumi.Input.asOptionalInput<FrontdoorFirewallPolicyLogScrubbing>(logScrubbing),
      managedRules = pulumi.Input.asOptionalInput<List<FrontdoorFirewallPolicyManagedRule>>(managedRules),
      mode = pulumi.Input.asInput<String>(mode),
      name = pulumi.Input.asOptionalInput<String>(name),
      redirectUrl = pulumi.Input.asOptionalInput<String>(redirectUrl),
      requestBodyCheckEnabled = pulumi.Input.asOptionalInput<bool>(requestBodyCheckEnabled),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      skuName = pulumi.Input.asInput<String>(skuName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'captchaCookieExpirationInMinutes': ?captchaCookieExpirationInMinutes,
      'customBlockResponseBody': ?customBlockResponseBody,
      'customBlockResponseStatusCode': ?customBlockResponseStatusCode,
      'customRules': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorFirewallPolicyCustomRule>, List<Map<String, dynamic>>>(customRules, (value) => pulumi.Input.encodeList<FrontdoorFirewallPolicyCustomRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'jsChallengeCookieExpirationInMinutes': ?jsChallengeCookieExpirationInMinutes,
      'logScrubbing': ?pulumi.Input.mapOptionalInputValue<FrontdoorFirewallPolicyLogScrubbing, Map<String, dynamic>>(logScrubbing, (value) => value.toMap()),
      'managedRules': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorFirewallPolicyManagedRule>, List<Map<String, dynamic>>>(managedRules, (value) => pulumi.Input.encodeList<FrontdoorFirewallPolicyManagedRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mode': mode,
      'name': ?name,
      'redirectUrl': ?redirectUrl,
      'requestBodyCheckEnabled': ?requestBodyCheckEnabled,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'tags': ?tags,
    };
  }

  factory FrontdoorFirewallPolicyArgs.fromMap(Map<String, dynamic> map) {
    return FrontdoorFirewallPolicyArgs(
      captchaCookieExpirationInMinutes: map['captchaCookieExpirationInMinutes'] == null ? null : pulumi.Output.create<int>(map['captchaCookieExpirationInMinutes'] as int),
      customBlockResponseBody: map['customBlockResponseBody'] == null ? null : pulumi.Output.create<String>(map['customBlockResponseBody'] as String),
      customBlockResponseStatusCode: map['customBlockResponseStatusCode'] == null ? null : pulumi.Output.create<int>(map['customBlockResponseStatusCode'] as int),
      customRules: map['customRules'] == null ? null : pulumi.Output.create<List<FrontdoorFirewallPolicyCustomRule>>(pulumi.Input.decodeList<FrontdoorFirewallPolicyCustomRule>(map['customRules'], (value) => FrontdoorFirewallPolicyCustomRule.fromMap((value as Map).cast<String, dynamic>()))),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      jsChallengeCookieExpirationInMinutes: map['jsChallengeCookieExpirationInMinutes'] == null ? null : pulumi.Output.create<int>(map['jsChallengeCookieExpirationInMinutes'] as int),
      logScrubbing: map['logScrubbing'] == null ? null : pulumi.Output.create<FrontdoorFirewallPolicyLogScrubbing>(FrontdoorFirewallPolicyLogScrubbing.fromMap((map['logScrubbing'] as Map).cast<String, dynamic>())),
      managedRules: map['managedRules'] == null ? null : pulumi.Output.create<List<FrontdoorFirewallPolicyManagedRule>>(pulumi.Input.decodeList<FrontdoorFirewallPolicyManagedRule>(map['managedRules'], (value) => FrontdoorFirewallPolicyManagedRule.fromMap((value as Map).cast<String, dynamic>()))),
      mode: pulumi.Output.create<String>(map['mode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      redirectUrl: map['redirectUrl'] == null ? null : pulumi.Output.create<String>(map['redirectUrl'] as String),
      requestBodyCheckEnabled: map['requestBodyCheckEnabled'] == null ? null : pulumi.Output.create<bool>(map['requestBodyCheckEnabled'] as bool),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skuName: pulumi.Output.create<String>(map['skuName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

