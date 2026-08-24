// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_application_policy_include_auth_context.dart';
import 'get_zero_trust_access_application_policy_include_auth_method.dart';
import 'get_zero_trust_access_application_policy_include_azure_ad.dart';
import 'get_zero_trust_access_application_policy_include_common_name.dart';
import 'get_zero_trust_access_application_policy_include_device_posture.dart';
import 'get_zero_trust_access_application_policy_include_email.dart';
import 'get_zero_trust_access_application_policy_include_email_domain.dart';
import 'get_zero_trust_access_application_policy_include_email_list.dart';
import 'get_zero_trust_access_application_policy_include_external_evaluation.dart';
import 'get_zero_trust_access_application_policy_include_geo.dart';
import 'get_zero_trust_access_application_policy_include_github_organization.dart';
import 'get_zero_trust_access_application_policy_include_group.dart';
import 'get_zero_trust_access_application_policy_include_gsuite.dart';
import 'get_zero_trust_access_application_policy_include_ip.dart';
import 'get_zero_trust_access_application_policy_include_ip_list.dart';
import 'get_zero_trust_access_application_policy_include_linked_app_token.dart';
import 'get_zero_trust_access_application_policy_include_login_method.dart';
import 'get_zero_trust_access_application_policy_include_oidc.dart';
import 'get_zero_trust_access_application_policy_include_okta.dart';
import 'get_zero_trust_access_application_policy_include_saml.dart';
import 'get_zero_trust_access_application_policy_include_service_token.dart';

class GetZeroTrustAccessApplicationPolicyInclude {
  /// An empty object which matches on all service tokens.
  final pulumi.Input<Map<String, dynamic>> anyValidServiceToken;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyIncludeAuthContext> authContext;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyIncludeAuthMethod> authMethod;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyIncludeAzureAd> azureAd;
  final pulumi.Input<Map<String, dynamic>> certificate;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyIncludeCommonName> commonName;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyIncludeDevicePosture> devicePosture;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyIncludeEmail> email;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyIncludeEmailDomain> emailDomain;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyIncludeEmailList> emailList;
  /// An empty object which matches on all users.
  final pulumi.Input<Map<String, dynamic>> everyone;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyIncludeExternalEvaluation> externalEvaluation;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyIncludeGeo> geo;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyIncludeGithubOrganization> githubOrganization;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyIncludeGroup> group;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyIncludeGsuite> gsuite;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyIncludeIp> ip;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyIncludeIpList> ipList;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyIncludeLinkedAppToken> linkedAppToken;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyIncludeLoginMethod> loginMethod;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyIncludeOidc> oidc;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyIncludeOkta> okta;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyIncludeSaml> saml;
  final pulumi.Input<GetZeroTrustAccessApplicationPolicyIncludeServiceToken> serviceToken;

  /// Creates a new [GetZeroTrustAccessApplicationPolicyInclude].
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
  const GetZeroTrustAccessApplicationPolicyInclude({
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
      'authContext': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyIncludeAuthContext, Map<String, dynamic>>(authContext, (value) => value.toMap()),
      'authMethod': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyIncludeAuthMethod, Map<String, dynamic>>(authMethod, (value) => value.toMap()),
      'azureAd': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyIncludeAzureAd, Map<String, dynamic>>(azureAd, (value) => value.toMap()),
      'certificate': certificate,
      'commonName': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyIncludeCommonName, Map<String, dynamic>>(commonName, (value) => value.toMap()),
      'devicePosture': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyIncludeDevicePosture, Map<String, dynamic>>(devicePosture, (value) => value.toMap()),
      'email': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyIncludeEmail, Map<String, dynamic>>(email, (value) => value.toMap()),
      'emailDomain': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyIncludeEmailDomain, Map<String, dynamic>>(emailDomain, (value) => value.toMap()),
      'emailList': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyIncludeEmailList, Map<String, dynamic>>(emailList, (value) => value.toMap()),
      'everyone': everyone,
      'externalEvaluation': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyIncludeExternalEvaluation, Map<String, dynamic>>(externalEvaluation, (value) => value.toMap()),
      'geo': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyIncludeGeo, Map<String, dynamic>>(geo, (value) => value.toMap()),
      'githubOrganization': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyIncludeGithubOrganization, Map<String, dynamic>>(githubOrganization, (value) => value.toMap()),
      'group': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyIncludeGroup, Map<String, dynamic>>(group, (value) => value.toMap()),
      'gsuite': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyIncludeGsuite, Map<String, dynamic>>(gsuite, (value) => value.toMap()),
      'ip': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyIncludeIp, Map<String, dynamic>>(ip, (value) => value.toMap()),
      'ipList': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyIncludeIpList, Map<String, dynamic>>(ipList, (value) => value.toMap()),
      'linkedAppToken': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyIncludeLinkedAppToken, Map<String, dynamic>>(linkedAppToken, (value) => value.toMap()),
      'loginMethod': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyIncludeLoginMethod, Map<String, dynamic>>(loginMethod, (value) => value.toMap()),
      'oidc': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyIncludeOidc, Map<String, dynamic>>(oidc, (value) => value.toMap()),
      'okta': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyIncludeOkta, Map<String, dynamic>>(okta, (value) => value.toMap()),
      'saml': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyIncludeSaml, Map<String, dynamic>>(saml, (value) => value.toMap()),
      'serviceToken': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationPolicyIncludeServiceToken, Map<String, dynamic>>(serviceToken, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustAccessApplicationPolicyInclude.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationPolicyInclude(
      anyValidServiceToken: pulumi.Input.fromValue((map['anyValidServiceToken']! as Map).cast<String, dynamic>()),
      authContext: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyIncludeAuthContext.fromMap((map['authContext']! as Map).cast<String, dynamic>())),
      authMethod: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyIncludeAuthMethod.fromMap((map['authMethod']! as Map).cast<String, dynamic>())),
      azureAd: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyIncludeAzureAd.fromMap((map['azureAd']! as Map).cast<String, dynamic>())),
      certificate: pulumi.Input.fromValue((map['certificate']! as Map).cast<String, dynamic>()),
      commonName: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyIncludeCommonName.fromMap((map['commonName']! as Map).cast<String, dynamic>())),
      devicePosture: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyIncludeDevicePosture.fromMap((map['devicePosture']! as Map).cast<String, dynamic>())),
      email: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyIncludeEmail.fromMap((map['email']! as Map).cast<String, dynamic>())),
      emailDomain: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyIncludeEmailDomain.fromMap((map['emailDomain']! as Map).cast<String, dynamic>())),
      emailList: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyIncludeEmailList.fromMap((map['emailList']! as Map).cast<String, dynamic>())),
      everyone: pulumi.Input.fromValue((map['everyone']! as Map).cast<String, dynamic>()),
      externalEvaluation: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyIncludeExternalEvaluation.fromMap((map['externalEvaluation']! as Map).cast<String, dynamic>())),
      geo: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyIncludeGeo.fromMap((map['geo']! as Map).cast<String, dynamic>())),
      githubOrganization: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyIncludeGithubOrganization.fromMap((map['githubOrganization']! as Map).cast<String, dynamic>())),
      group: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyIncludeGroup.fromMap((map['group']! as Map).cast<String, dynamic>())),
      gsuite: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyIncludeGsuite.fromMap((map['gsuite']! as Map).cast<String, dynamic>())),
      ip: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyIncludeIp.fromMap((map['ip']! as Map).cast<String, dynamic>())),
      ipList: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyIncludeIpList.fromMap((map['ipList']! as Map).cast<String, dynamic>())),
      linkedAppToken: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyIncludeLinkedAppToken.fromMap((map['linkedAppToken']! as Map).cast<String, dynamic>())),
      loginMethod: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyIncludeLoginMethod.fromMap((map['loginMethod']! as Map).cast<String, dynamic>())),
      oidc: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyIncludeOidc.fromMap((map['oidc']! as Map).cast<String, dynamic>())),
      okta: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyIncludeOkta.fromMap((map['okta']! as Map).cast<String, dynamic>())),
      saml: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyIncludeSaml.fromMap((map['saml']! as Map).cast<String, dynamic>())),
      serviceToken: pulumi.Input.fromValue(GetZeroTrustAccessApplicationPolicyIncludeServiceToken.fromMap((map['serviceToken']! as Map).cast<String, dynamic>())),
    );
  }
}
