// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_applications_result_policy_include_auth_context.dart';
import 'get_zero_trust_access_applications_result_policy_include_auth_method.dart';
import 'get_zero_trust_access_applications_result_policy_include_azure_ad.dart';
import 'get_zero_trust_access_applications_result_policy_include_common_name.dart';
import 'get_zero_trust_access_applications_result_policy_include_device_posture.dart';
import 'get_zero_trust_access_applications_result_policy_include_email.dart';
import 'get_zero_trust_access_applications_result_policy_include_email_domain.dart';
import 'get_zero_trust_access_applications_result_policy_include_email_list.dart';
import 'get_zero_trust_access_applications_result_policy_include_external_evaluation.dart';
import 'get_zero_trust_access_applications_result_policy_include_geo.dart';
import 'get_zero_trust_access_applications_result_policy_include_github_organization.dart';
import 'get_zero_trust_access_applications_result_policy_include_group.dart';
import 'get_zero_trust_access_applications_result_policy_include_gsuite.dart';
import 'get_zero_trust_access_applications_result_policy_include_ip.dart';
import 'get_zero_trust_access_applications_result_policy_include_ip_list.dart';
import 'get_zero_trust_access_applications_result_policy_include_linked_app_token.dart';
import 'get_zero_trust_access_applications_result_policy_include_login_method.dart';
import 'get_zero_trust_access_applications_result_policy_include_oidc.dart';
import 'get_zero_trust_access_applications_result_policy_include_okta.dart';
import 'get_zero_trust_access_applications_result_policy_include_saml.dart';
import 'get_zero_trust_access_applications_result_policy_include_service_token.dart';

class GetZeroTrustAccessApplicationsResultPolicyInclude {
  /// An empty object which matches on all service tokens.
  final pulumi.Input<Map<String, dynamic>> anyValidServiceToken;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyIncludeAuthContext> authContext;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyIncludeAuthMethod> authMethod;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyIncludeAzureAd> azureAd;
  final pulumi.Input<Map<String, dynamic>> certificate;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyIncludeCommonName> commonName;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyIncludeDevicePosture> devicePosture;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyIncludeEmail> email;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyIncludeEmailDomain> emailDomain;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyIncludeEmailList> emailList;
  /// An empty object which matches on all users.
  final pulumi.Input<Map<String, dynamic>> everyone;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyIncludeExternalEvaluation> externalEvaluation;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyIncludeGeo> geo;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyIncludeGithubOrganization> githubOrganization;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyIncludeGroup> group;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyIncludeGsuite> gsuite;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyIncludeIp> ip;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyIncludeIpList> ipList;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyIncludeLinkedAppToken> linkedAppToken;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyIncludeLoginMethod> loginMethod;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyIncludeOidc> oidc;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyIncludeOkta> okta;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyIncludeSaml> saml;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultPolicyIncludeServiceToken> serviceToken;

  /// Creates a new [GetZeroTrustAccessApplicationsResultPolicyInclude].
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
  const GetZeroTrustAccessApplicationsResultPolicyInclude({
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
      'authContext': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyIncludeAuthContext, Map<String, dynamic>>(authContext, (value) => value.toMap()),
      'authMethod': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyIncludeAuthMethod, Map<String, dynamic>>(authMethod, (value) => value.toMap()),
      'azureAd': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyIncludeAzureAd, Map<String, dynamic>>(azureAd, (value) => value.toMap()),
      'certificate': certificate,
      'commonName': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyIncludeCommonName, Map<String, dynamic>>(commonName, (value) => value.toMap()),
      'devicePosture': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyIncludeDevicePosture, Map<String, dynamic>>(devicePosture, (value) => value.toMap()),
      'email': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyIncludeEmail, Map<String, dynamic>>(email, (value) => value.toMap()),
      'emailDomain': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyIncludeEmailDomain, Map<String, dynamic>>(emailDomain, (value) => value.toMap()),
      'emailList': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyIncludeEmailList, Map<String, dynamic>>(emailList, (value) => value.toMap()),
      'everyone': everyone,
      'externalEvaluation': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyIncludeExternalEvaluation, Map<String, dynamic>>(externalEvaluation, (value) => value.toMap()),
      'geo': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyIncludeGeo, Map<String, dynamic>>(geo, (value) => value.toMap()),
      'githubOrganization': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyIncludeGithubOrganization, Map<String, dynamic>>(githubOrganization, (value) => value.toMap()),
      'group': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyIncludeGroup, Map<String, dynamic>>(group, (value) => value.toMap()),
      'gsuite': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyIncludeGsuite, Map<String, dynamic>>(gsuite, (value) => value.toMap()),
      'ip': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyIncludeIp, Map<String, dynamic>>(ip, (value) => value.toMap()),
      'ipList': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyIncludeIpList, Map<String, dynamic>>(ipList, (value) => value.toMap()),
      'linkedAppToken': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyIncludeLinkedAppToken, Map<String, dynamic>>(linkedAppToken, (value) => value.toMap()),
      'loginMethod': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyIncludeLoginMethod, Map<String, dynamic>>(loginMethod, (value) => value.toMap()),
      'oidc': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyIncludeOidc, Map<String, dynamic>>(oidc, (value) => value.toMap()),
      'okta': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyIncludeOkta, Map<String, dynamic>>(okta, (value) => value.toMap()),
      'saml': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyIncludeSaml, Map<String, dynamic>>(saml, (value) => value.toMap()),
      'serviceToken': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultPolicyIncludeServiceToken, Map<String, dynamic>>(serviceToken, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustAccessApplicationsResultPolicyInclude.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResultPolicyInclude(
      anyValidServiceToken: pulumi.Input.fromValue((map['anyValidServiceToken']! as Map).cast<String, dynamic>()),
      authContext: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyIncludeAuthContext.fromMap((map['authContext']! as Map).cast<String, dynamic>())),
      authMethod: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyIncludeAuthMethod.fromMap((map['authMethod']! as Map).cast<String, dynamic>())),
      azureAd: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyIncludeAzureAd.fromMap((map['azureAd']! as Map).cast<String, dynamic>())),
      certificate: pulumi.Input.fromValue((map['certificate']! as Map).cast<String, dynamic>()),
      commonName: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyIncludeCommonName.fromMap((map['commonName']! as Map).cast<String, dynamic>())),
      devicePosture: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyIncludeDevicePosture.fromMap((map['devicePosture']! as Map).cast<String, dynamic>())),
      email: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyIncludeEmail.fromMap((map['email']! as Map).cast<String, dynamic>())),
      emailDomain: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyIncludeEmailDomain.fromMap((map['emailDomain']! as Map).cast<String, dynamic>())),
      emailList: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyIncludeEmailList.fromMap((map['emailList']! as Map).cast<String, dynamic>())),
      everyone: pulumi.Input.fromValue((map['everyone']! as Map).cast<String, dynamic>()),
      externalEvaluation: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyIncludeExternalEvaluation.fromMap((map['externalEvaluation']! as Map).cast<String, dynamic>())),
      geo: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyIncludeGeo.fromMap((map['geo']! as Map).cast<String, dynamic>())),
      githubOrganization: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyIncludeGithubOrganization.fromMap((map['githubOrganization']! as Map).cast<String, dynamic>())),
      group: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyIncludeGroup.fromMap((map['group']! as Map).cast<String, dynamic>())),
      gsuite: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyIncludeGsuite.fromMap((map['gsuite']! as Map).cast<String, dynamic>())),
      ip: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyIncludeIp.fromMap((map['ip']! as Map).cast<String, dynamic>())),
      ipList: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyIncludeIpList.fromMap((map['ipList']! as Map).cast<String, dynamic>())),
      linkedAppToken: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyIncludeLinkedAppToken.fromMap((map['linkedAppToken']! as Map).cast<String, dynamic>())),
      loginMethod: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyIncludeLoginMethod.fromMap((map['loginMethod']! as Map).cast<String, dynamic>())),
      oidc: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyIncludeOidc.fromMap((map['oidc']! as Map).cast<String, dynamic>())),
      okta: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyIncludeOkta.fromMap((map['okta']! as Map).cast<String, dynamic>())),
      saml: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyIncludeSaml.fromMap((map['saml']! as Map).cast<String, dynamic>())),
      serviceToken: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultPolicyIncludeServiceToken.fromMap((map['serviceToken']! as Map).cast<String, dynamic>())),
    );
  }
}
