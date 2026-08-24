// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_application_policy_require_auth_context.dart';
import 'get_zero_trust_access_application_policy_require_auth_method.dart';
import 'get_zero_trust_access_application_policy_require_azure_ad.dart';
import 'get_zero_trust_access_application_policy_require_common_name.dart';
import 'get_zero_trust_access_application_policy_require_device_posture.dart';
import 'get_zero_trust_access_application_policy_require_email.dart';
import 'get_zero_trust_access_application_policy_require_email_domain.dart';
import 'get_zero_trust_access_application_policy_require_email_list.dart';
import 'get_zero_trust_access_application_policy_require_external_evaluation.dart';
import 'get_zero_trust_access_application_policy_require_geo.dart';
import 'get_zero_trust_access_application_policy_require_github_organization.dart';
import 'get_zero_trust_access_application_policy_require_group.dart';
import 'get_zero_trust_access_application_policy_require_gsuite.dart';
import 'get_zero_trust_access_application_policy_require_ip.dart';
import 'get_zero_trust_access_application_policy_require_ip_list.dart';
import 'get_zero_trust_access_application_policy_require_linked_app_token.dart';
import 'get_zero_trust_access_application_policy_require_login_method.dart';
import 'get_zero_trust_access_application_policy_require_oidc.dart';
import 'get_zero_trust_access_application_policy_require_okta.dart';
import 'get_zero_trust_access_application_policy_require_saml.dart';
import 'get_zero_trust_access_application_policy_require_service_token.dart';

class GetZeroTrustAccessApplicationPolicyRequire {
  /// An empty object which matches on all service tokens.
  final pulumi.Input<Map<String, dynamic>> anyValidServiceToken;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyRequireAuthContext> authContext;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyRequireAuthMethod> authMethod;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyRequireAzureAd> azureAd;
  final pulumi.Input<Map<String, dynamic>> certificate;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyRequireCommonName> commonName;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyRequireDevicePosture> devicePosture;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyRequireEmail> email;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyRequireEmailDomain> emailDomain;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyRequireEmailList> emailList;
  /// An empty object which matches on all users.
  final pulumi.Input<Map<String, dynamic>> everyone;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyRequireExternalEvaluation> externalEvaluation;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyRequireGeo> geo;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyRequireGithubOrganization> githubOrganization;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyRequireGroup> group;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyRequireGsuite> gsuite;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyRequireIp> ip;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyRequireIpList> ipList;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyRequireLinkedAppToken> linkedAppToken;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyRequireLoginMethod> loginMethod;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyRequireOidc> oidc;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyRequireOkta> okta;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyRequireSaml> saml;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyRequireServiceToken> serviceToken;

  /// Creates a new [GetZeroTrustAccessApplicationPolicyRequire].
  /// [anyValidServiceToken] An empty object which matches on all service tokens.
  /// [authContext] Required.
  /// [authMethod] Required.
  /// [azureAd] Required.
  /// [certificate] Required.
  /// [commonName] Required.
  /// [devicePosture] Required.
  /// [email] Required.
  /// [emailDomain] Required.
  /// [emailList] Required.
  /// [everyone] An empty object which matches on all users.
  /// [externalEvaluation] Required.
  /// [geo] Required.
  /// [githubOrganization] Required.
  /// [group] Required.
  /// [gsuite] Required.
  /// [ip] Required.
  /// [ipList] Required.
  /// [linkedAppToken] Required.
  /// [loginMethod] Required.
  /// [oidc] Required.
  /// [okta] Required.
  /// [saml] Required.
  /// [serviceToken] Required.
  const GetZeroTrustAccessApplicationPolicyRequire({
    required this.anyValidServiceToken,
    required this.authContext,
    required this.authMethod,
    required this.azureAd,
    required this.certificate,
    required this.commonName,
    required this.devicePosture,
    required this.email,
    required this.emailDomain,
    required this.emailList,
    required this.everyone,
    required this.externalEvaluation,
    required this.geo,
    required this.githubOrganization,
    required this.group,
    required this.gsuite,
    required this.ip,
    required this.ipList,
    required this.linkedAppToken,
    required this.loginMethod,
    required this.oidc,
    required this.okta,
    required this.saml,
    required this.serviceToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anyValidServiceToken': anyValidServiceToken,
      'authContext': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyRequireAuthContext, Map<String, dynamic>>(authContext, (value) => value.toMap()),
      'authMethod': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyRequireAuthMethod, Map<String, dynamic>>(authMethod, (value) => value.toMap()),
      'azureAd': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyRequireAzureAd, Map<String, dynamic>>(azureAd, (value) => value.toMap()),
      'certificate': certificate,
      'commonName': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyRequireCommonName, Map<String, dynamic>>(commonName, (value) => value.toMap()),
      'devicePosture': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyRequireDevicePosture, Map<String, dynamic>>(devicePosture, (value) => value.toMap()),
      'email': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyRequireEmail, Map<String, dynamic>>(email, (value) => value.toMap()),
      'emailDomain': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyRequireEmailDomain, Map<String, dynamic>>(emailDomain, (value) => value.toMap()),
      'emailList': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyRequireEmailList, Map<String, dynamic>>(emailList, (value) => value.toMap()),
      'everyone': everyone,
      'externalEvaluation': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyRequireExternalEvaluation, Map<String, dynamic>>(externalEvaluation, (value) => value.toMap()),
      'geo': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyRequireGeo, Map<String, dynamic>>(geo, (value) => value.toMap()),
      'githubOrganization': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyRequireGithubOrganization, Map<String, dynamic>>(githubOrganization, (value) => value.toMap()),
      'group': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyRequireGroup, Map<String, dynamic>>(group, (value) => value.toMap()),
      'gsuite': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyRequireGsuite, Map<String, dynamic>>(gsuite, (value) => value.toMap()),
      'ip': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyRequireIp, Map<String, dynamic>>(ip, (value) => value.toMap()),
      'ipList': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyRequireIpList, Map<String, dynamic>>(ipList, (value) => value.toMap()),
      'linkedAppToken': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyRequireLinkedAppToken, Map<String, dynamic>>(linkedAppToken, (value) => value.toMap()),
      'loginMethod': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyRequireLoginMethod, Map<String, dynamic>>(loginMethod, (value) => value.toMap()),
      'oidc': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyRequireOidc, Map<String, dynamic>>(oidc, (value) => value.toMap()),
      'okta': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyRequireOkta, Map<String, dynamic>>(okta, (value) => value.toMap()),
      'saml': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyRequireSaml, Map<String, dynamic>>(saml, (value) => value.toMap()),
      'serviceToken': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyRequireServiceToken, Map<String, dynamic>>(serviceToken, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustAccessApplicationPolicyRequire.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationPolicyRequire(
      anyValidServiceToken: pulumi.Input.fromValue((map['anyValidServiceToken']! as Map).cast<String, dynamic>()),
      authContext: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyRequireAuthContext.fromMap((map['authContext']! as Map).cast<String, dynamic>())),
      authMethod: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyRequireAuthMethod.fromMap((map['authMethod']! as Map).cast<String, dynamic>())),
      azureAd: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyRequireAzureAd.fromMap((map['azureAd']! as Map).cast<String, dynamic>())),
      certificate: pulumi.Input.fromValue((map['certificate']! as Map).cast<String, dynamic>()),
      commonName: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyRequireCommonName.fromMap((map['commonName']! as Map).cast<String, dynamic>())),
      devicePosture: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyRequireDevicePosture.fromMap((map['devicePosture']! as Map).cast<String, dynamic>())),
      email: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyRequireEmail.fromMap((map['email']! as Map).cast<String, dynamic>())),
      emailDomain: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyRequireEmailDomain.fromMap((map['emailDomain']! as Map).cast<String, dynamic>())),
      emailList: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyRequireEmailList.fromMap((map['emailList']! as Map).cast<String, dynamic>())),
      everyone: pulumi.Input.fromValue((map['everyone']! as Map).cast<String, dynamic>()),
      externalEvaluation: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyRequireExternalEvaluation.fromMap((map['externalEvaluation']! as Map).cast<String, dynamic>())),
      geo: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyRequireGeo.fromMap((map['geo']! as Map).cast<String, dynamic>())),
      githubOrganization: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyRequireGithubOrganization.fromMap((map['githubOrganization']! as Map).cast<String, dynamic>())),
      group: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyRequireGroup.fromMap((map['group']! as Map).cast<String, dynamic>())),
      gsuite: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyRequireGsuite.fromMap((map['gsuite']! as Map).cast<String, dynamic>())),
      ip: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyRequireIp.fromMap((map['ip']! as Map).cast<String, dynamic>())),
      ipList: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyRequireIpList.fromMap((map['ipList']! as Map).cast<String, dynamic>())),
      linkedAppToken: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyRequireLinkedAppToken.fromMap((map['linkedAppToken']! as Map).cast<String, dynamic>())),
      loginMethod: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyRequireLoginMethod.fromMap((map['loginMethod']! as Map).cast<String, dynamic>())),
      oidc: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyRequireOidc.fromMap((map['oidc']! as Map).cast<String, dynamic>())),
      okta: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyRequireOkta.fromMap((map['okta']! as Map).cast<String, dynamic>())),
      saml: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyRequireSaml.fromMap((map['saml']! as Map).cast<String, dynamic>())),
      serviceToken: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyRequireServiceToken.fromMap((map['serviceToken']! as Map).cast<String, dynamic>())),
    );
  }
}
