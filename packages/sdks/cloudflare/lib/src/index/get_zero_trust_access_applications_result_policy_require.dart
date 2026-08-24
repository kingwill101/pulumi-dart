// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_applications_result_policy_require_auth_context.dart';
import 'get_zero_trust_access_applications_result_policy_require_auth_method.dart';
import 'get_zero_trust_access_applications_result_policy_require_azure_ad.dart';
import 'get_zero_trust_access_applications_result_policy_require_common_name.dart';
import 'get_zero_trust_access_applications_result_policy_require_device_posture.dart';
import 'get_zero_trust_access_applications_result_policy_require_email.dart';
import 'get_zero_trust_access_applications_result_policy_require_email_domain.dart';
import 'get_zero_trust_access_applications_result_policy_require_email_list.dart';
import 'get_zero_trust_access_applications_result_policy_require_external_evaluation.dart';
import 'get_zero_trust_access_applications_result_policy_require_geo.dart';
import 'get_zero_trust_access_applications_result_policy_require_github_organization.dart';
import 'get_zero_trust_access_applications_result_policy_require_group.dart';
import 'get_zero_trust_access_applications_result_policy_require_gsuite.dart';
import 'get_zero_trust_access_applications_result_policy_require_ip.dart';
import 'get_zero_trust_access_applications_result_policy_require_ip_list.dart';
import 'get_zero_trust_access_applications_result_policy_require_linked_app_token.dart';
import 'get_zero_trust_access_applications_result_policy_require_login_method.dart';
import 'get_zero_trust_access_applications_result_policy_require_oidc.dart';
import 'get_zero_trust_access_applications_result_policy_require_okta.dart';
import 'get_zero_trust_access_applications_result_policy_require_saml.dart';
import 'get_zero_trust_access_applications_result_policy_require_service_token.dart';

class GetZeroTrustAccessApplicationsResultPolicyRequire {
  /// An empty object which matches on all service tokens.
  final pulumi.Input<Map<String, dynamic>> anyValidServiceToken;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyRequireAuthContext> authContext;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyRequireAuthMethod> authMethod;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyRequireAzureAd> azureAd;
  final pulumi.Input<Map<String, dynamic>> certificate;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyRequireCommonName> commonName;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyRequireDevicePosture> devicePosture;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyRequireEmail> email;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyRequireEmailDomain> emailDomain;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyRequireEmailList> emailList;
  /// An empty object which matches on all users.
  final pulumi.Input<Map<String, dynamic>> everyone;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyRequireExternalEvaluation> externalEvaluation;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyRequireGeo> geo;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyRequireGithubOrganization> githubOrganization;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyRequireGroup> group;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyRequireGsuite> gsuite;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyRequireIp> ip;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyRequireIpList> ipList;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyRequireLinkedAppToken> linkedAppToken;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyRequireLoginMethod> loginMethod;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyRequireOidc> oidc;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyRequireOkta> okta;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyRequireSaml> saml;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyRequireServiceToken> serviceToken;

  /// Creates a new [GetZeroTrustAccessApplicationsResultPolicyRequire].
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
  const GetZeroTrustAccessApplicationsResultPolicyRequire({
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
      'authContext': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyRequireAuthContext, Map<String, dynamic>>(authContext, (value) => value.toMap()),
      'authMethod': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyRequireAuthMethod, Map<String, dynamic>>(authMethod, (value) => value.toMap()),
      'azureAd': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyRequireAzureAd, Map<String, dynamic>>(azureAd, (value) => value.toMap()),
      'certificate': certificate,
      'commonName': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyRequireCommonName, Map<String, dynamic>>(commonName, (value) => value.toMap()),
      'devicePosture': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyRequireDevicePosture, Map<String, dynamic>>(devicePosture, (value) => value.toMap()),
      'email': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyRequireEmail, Map<String, dynamic>>(email, (value) => value.toMap()),
      'emailDomain': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyRequireEmailDomain, Map<String, dynamic>>(emailDomain, (value) => value.toMap()),
      'emailList': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyRequireEmailList, Map<String, dynamic>>(emailList, (value) => value.toMap()),
      'everyone': everyone,
      'externalEvaluation': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyRequireExternalEvaluation, Map<String, dynamic>>(externalEvaluation, (value) => value.toMap()),
      'geo': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyRequireGeo, Map<String, dynamic>>(geo, (value) => value.toMap()),
      'githubOrganization': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyRequireGithubOrganization, Map<String, dynamic>>(githubOrganization, (value) => value.toMap()),
      'group': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyRequireGroup, Map<String, dynamic>>(group, (value) => value.toMap()),
      'gsuite': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyRequireGsuite, Map<String, dynamic>>(gsuite, (value) => value.toMap()),
      'ip': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyRequireIp, Map<String, dynamic>>(ip, (value) => value.toMap()),
      'ipList': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyRequireIpList, Map<String, dynamic>>(ipList, (value) => value.toMap()),
      'linkedAppToken': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyRequireLinkedAppToken, Map<String, dynamic>>(linkedAppToken, (value) => value.toMap()),
      'loginMethod': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyRequireLoginMethod, Map<String, dynamic>>(loginMethod, (value) => value.toMap()),
      'oidc': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyRequireOidc, Map<String, dynamic>>(oidc, (value) => value.toMap()),
      'okta': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyRequireOkta, Map<String, dynamic>>(okta, (value) => value.toMap()),
      'saml': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyRequireSaml, Map<String, dynamic>>(saml, (value) => value.toMap()),
      'serviceToken': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyRequireServiceToken, Map<String, dynamic>>(serviceToken, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustAccessApplicationsResultPolicyRequire.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResultPolicyRequire(
      anyValidServiceToken: pulumi.Input.fromValue((map['anyValidServiceToken']! as Map).cast<String, dynamic>()),
      authContext: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyRequireAuthContext.fromMap((map['authContext']! as Map).cast<String, dynamic>())),
      authMethod: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyRequireAuthMethod.fromMap((map['authMethod']! as Map).cast<String, dynamic>())),
      azureAd: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyRequireAzureAd.fromMap((map['azureAd']! as Map).cast<String, dynamic>())),
      certificate: pulumi.Input.fromValue((map['certificate']! as Map).cast<String, dynamic>()),
      commonName: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyRequireCommonName.fromMap((map['commonName']! as Map).cast<String, dynamic>())),
      devicePosture: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyRequireDevicePosture.fromMap((map['devicePosture']! as Map).cast<String, dynamic>())),
      email: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyRequireEmail.fromMap((map['email']! as Map).cast<String, dynamic>())),
      emailDomain: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyRequireEmailDomain.fromMap((map['emailDomain']! as Map).cast<String, dynamic>())),
      emailList: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyRequireEmailList.fromMap((map['emailList']! as Map).cast<String, dynamic>())),
      everyone: pulumi.Input.fromValue((map['everyone']! as Map).cast<String, dynamic>()),
      externalEvaluation: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyRequireExternalEvaluation.fromMap((map['externalEvaluation']! as Map).cast<String, dynamic>())),
      geo: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyRequireGeo.fromMap((map['geo']! as Map).cast<String, dynamic>())),
      githubOrganization: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyRequireGithubOrganization.fromMap((map['githubOrganization']! as Map).cast<String, dynamic>())),
      group: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyRequireGroup.fromMap((map['group']! as Map).cast<String, dynamic>())),
      gsuite: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyRequireGsuite.fromMap((map['gsuite']! as Map).cast<String, dynamic>())),
      ip: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyRequireIp.fromMap((map['ip']! as Map).cast<String, dynamic>())),
      ipList: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyRequireIpList.fromMap((map['ipList']! as Map).cast<String, dynamic>())),
      linkedAppToken: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyRequireLinkedAppToken.fromMap((map['linkedAppToken']! as Map).cast<String, dynamic>())),
      loginMethod: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyRequireLoginMethod.fromMap((map['loginMethod']! as Map).cast<String, dynamic>())),
      oidc: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyRequireOidc.fromMap((map['oidc']! as Map).cast<String, dynamic>())),
      okta: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyRequireOkta.fromMap((map['okta']! as Map).cast<String, dynamic>())),
      saml: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyRequireSaml.fromMap((map['saml']! as Map).cast<String, dynamic>())),
      serviceToken: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyRequireServiceToken.fromMap((map['serviceToken']! as Map).cast<String, dynamic>())),
    );
  }
}
