// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_application_policy_include_auth_context.dart';
import 'access_application_policy_include_auth_method.dart';
import 'access_application_policy_include_azure_ad.dart';
import 'access_application_policy_include_common_name.dart';
import 'access_application_policy_include_device_posture.dart';
import 'access_application_policy_include_email.dart';
import 'access_application_policy_include_email_domain.dart';
import 'access_application_policy_include_email_list.dart';
import 'access_application_policy_include_external_evaluation.dart';
import 'access_application_policy_include_geo.dart';
import 'access_application_policy_include_github_organization.dart';
import 'access_application_policy_include_group.dart';
import 'access_application_policy_include_gsuite.dart';
import 'access_application_policy_include_ip.dart';
import 'access_application_policy_include_ip_list.dart';
import 'access_application_policy_include_linked_app_token.dart';
import 'access_application_policy_include_login_method.dart';
import 'access_application_policy_include_oidc.dart';
import 'access_application_policy_include_okta.dart';
import 'access_application_policy_include_saml.dart';
import 'access_application_policy_include_service_token.dart';

class AccessApplicationPolicyInclude {
  /// An empty object which matches on all service tokens.
  final pulumi.Input<Map<String, dynamic>?>? anyValidServiceToken;
  final pulumi.Input<AccessApplicationPolicyIncludeAuthContext?>? authContext;
  final pulumi.Input<AccessApplicationPolicyIncludeAuthMethod?>? authMethod;
  final pulumi.Input<AccessApplicationPolicyIncludeAzureAd?>? azureAd;
  final pulumi.Input<Map<String, dynamic>?>? certificate;
  final pulumi.Input<AccessApplicationPolicyIncludeCommonName?>? commonName;
  final pulumi.Input<AccessApplicationPolicyIncludeDevicePosture?>? devicePosture;
  final pulumi.Input<AccessApplicationPolicyIncludeEmail?>? email;
  final pulumi.Input<AccessApplicationPolicyIncludeEmailDomain?>? emailDomain;
  final pulumi.Input<AccessApplicationPolicyIncludeEmailList?>? emailList;
  /// An empty object which matches on all users.
  final pulumi.Input<Map<String, dynamic>?>? everyone;
  final pulumi.Input<AccessApplicationPolicyIncludeExternalEvaluation?>? externalEvaluation;
  final pulumi.Input<AccessApplicationPolicyIncludeGeo?>? geo;
  final pulumi.Input<AccessApplicationPolicyIncludeGithubOrganization?>? githubOrganization;
  final pulumi.Input<AccessApplicationPolicyIncludeGroup?>? group;
  final pulumi.Input<AccessApplicationPolicyIncludeGsuite?>? gsuite;
  final pulumi.Input<AccessApplicationPolicyIncludeIp?>? ip;
  final pulumi.Input<AccessApplicationPolicyIncludeIpList?>? ipList;
  final pulumi.Input<AccessApplicationPolicyIncludeLinkedAppToken?>? linkedAppToken;
  final pulumi.Input<AccessApplicationPolicyIncludeLoginMethod?>? loginMethod;
  final pulumi.Input<AccessApplicationPolicyIncludeOidc?>? oidc;
  final pulumi.Input<AccessApplicationPolicyIncludeOkta?>? okta;
  final pulumi.Input<AccessApplicationPolicyIncludeSaml?>? saml;
  final pulumi.Input<AccessApplicationPolicyIncludeServiceToken?>? serviceToken;

  /// Creates a new [AccessApplicationPolicyInclude].
  /// [anyValidServiceToken] An empty object which matches on all service tokens.
  /// [authContext] Optional.
  /// [authMethod] Optional.
  /// [azureAd] Optional.
  /// [certificate] Optional.
  /// [commonName] Optional.
  /// [devicePosture] Optional.
  /// [email] Optional.
  /// [emailDomain] Optional.
  /// [emailList] Optional.
  /// [everyone] An empty object which matches on all users.
  /// [externalEvaluation] Optional.
  /// [geo] Optional.
  /// [githubOrganization] Optional.
  /// [group] Optional.
  /// [gsuite] Optional.
  /// [ip] Optional.
  /// [ipList] Optional.
  /// [linkedAppToken] Optional.
  /// [loginMethod] Optional.
  /// [oidc] Optional.
  /// [okta] Optional.
  /// [saml] Optional.
  /// [serviceToken] Optional.
  const AccessApplicationPolicyInclude({
    this.anyValidServiceToken,
    this.authContext,
    this.authMethod,
    this.azureAd,
    this.certificate,
    this.commonName,
    this.devicePosture,
    this.email,
    this.emailDomain,
    this.emailList,
    this.everyone,
    this.externalEvaluation,
    this.geo,
    this.githubOrganization,
    this.group,
    this.gsuite,
    this.ip,
    this.ipList,
    this.linkedAppToken,
    this.loginMethod,
    this.oidc,
    this.okta,
    this.saml,
    this.serviceToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anyValidServiceToken': ?anyValidServiceToken,
      'authContext': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyIncludeAuthContext, Map<String, dynamic>>(authContext, (value) => value.toMap()),
      'authMethod': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyIncludeAuthMethod, Map<String, dynamic>>(authMethod, (value) => value.toMap()),
      'azureAd': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyIncludeAzureAd, Map<String, dynamic>>(azureAd, (value) => value.toMap()),
      'certificate': ?certificate,
      'commonName': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyIncludeCommonName, Map<String, dynamic>>(commonName, (value) => value.toMap()),
      'devicePosture': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyIncludeDevicePosture, Map<String, dynamic>>(devicePosture, (value) => value.toMap()),
      'email': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyIncludeEmail, Map<String, dynamic>>(email, (value) => value.toMap()),
      'emailDomain': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyIncludeEmailDomain, Map<String, dynamic>>(emailDomain, (value) => value.toMap()),
      'emailList': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyIncludeEmailList, Map<String, dynamic>>(emailList, (value) => value.toMap()),
      'everyone': ?everyone,
      'externalEvaluation': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyIncludeExternalEvaluation, Map<String, dynamic>>(externalEvaluation, (value) => value.toMap()),
      'geo': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyIncludeGeo, Map<String, dynamic>>(geo, (value) => value.toMap()),
      'githubOrganization': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyIncludeGithubOrganization, Map<String, dynamic>>(githubOrganization, (value) => value.toMap()),
      'group': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyIncludeGroup, Map<String, dynamic>>(group, (value) => value.toMap()),
      'gsuite': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyIncludeGsuite, Map<String, dynamic>>(gsuite, (value) => value.toMap()),
      'ip': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyIncludeIp, Map<String, dynamic>>(ip, (value) => value.toMap()),
      'ipList': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyIncludeIpList, Map<String, dynamic>>(ipList, (value) => value.toMap()),
      'linkedAppToken': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyIncludeLinkedAppToken, Map<String, dynamic>>(linkedAppToken, (value) => value.toMap()),
      'loginMethod': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyIncludeLoginMethod, Map<String, dynamic>>(loginMethod, (value) => value.toMap()),
      'oidc': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyIncludeOidc, Map<String, dynamic>>(oidc, (value) => value.toMap()),
      'okta': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyIncludeOkta, Map<String, dynamic>>(okta, (value) => value.toMap()),
      'saml': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyIncludeSaml, Map<String, dynamic>>(saml, (value) => value.toMap()),
      'serviceToken': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyIncludeServiceToken, Map<String, dynamic>>(serviceToken, (value) => value.toMap()),
    };
  }

  factory AccessApplicationPolicyInclude.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyInclude(
      anyValidServiceToken: (() { final guardedValue = map['anyValidServiceToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      authContext: (() { final guardedValue = map['authContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyIncludeAuthContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authMethod: (() { final guardedValue = map['authMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyIncludeAuthMethod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureAd: (() { final guardedValue = map['azureAd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyIncludeAzureAd.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      commonName: (() { final guardedValue = map['commonName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyIncludeCommonName.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      devicePosture: (() { final guardedValue = map['devicePosture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyIncludeDevicePosture.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyIncludeEmail.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emailDomain: (() { final guardedValue = map['emailDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyIncludeEmailDomain.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emailList: (() { final guardedValue = map['emailList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyIncludeEmailList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      everyone: (() { final guardedValue = map['everyone']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      externalEvaluation: (() { final guardedValue = map['externalEvaluation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyIncludeExternalEvaluation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      geo: (() { final guardedValue = map['geo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyIncludeGeo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      githubOrganization: (() { final guardedValue = map['githubOrganization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyIncludeGithubOrganization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyIncludeGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gsuite: (() { final guardedValue = map['gsuite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyIncludeGsuite.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyIncludeIp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipList: (() { final guardedValue = map['ipList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyIncludeIpList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedAppToken: (() { final guardedValue = map['linkedAppToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyIncludeLinkedAppToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loginMethod: (() { final guardedValue = map['loginMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyIncludeLoginMethod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oidc: (() { final guardedValue = map['oidc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyIncludeOidc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      okta: (() { final guardedValue = map['okta']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyIncludeOkta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      saml: (() { final guardedValue = map['saml']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyIncludeSaml.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceToken: (() { final guardedValue = map['serviceToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyIncludeServiceToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
