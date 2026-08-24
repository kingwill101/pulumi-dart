// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_application_policy_require_auth_context.dart';
import 'access_application_policy_require_auth_method.dart';
import 'access_application_policy_require_azure_ad.dart';
import 'access_application_policy_require_common_name.dart';
import 'access_application_policy_require_device_posture.dart';
import 'access_application_policy_require_email.dart';
import 'access_application_policy_require_email_domain.dart';
import 'access_application_policy_require_email_list.dart';
import 'access_application_policy_require_external_evaluation.dart';
import 'access_application_policy_require_geo.dart';
import 'access_application_policy_require_github_organization.dart';
import 'access_application_policy_require_group.dart';
import 'access_application_policy_require_gsuite.dart';
import 'access_application_policy_require_ip.dart';
import 'access_application_policy_require_ip_list.dart';
import 'access_application_policy_require_linked_app_token.dart';
import 'access_application_policy_require_login_method.dart';
import 'access_application_policy_require_oidc.dart';
import 'access_application_policy_require_okta.dart';
import 'access_application_policy_require_saml.dart';
import 'access_application_policy_require_service_token.dart';

class AccessApplicationPolicyRequire {
  /// An empty object which matches on all service tokens.
  final pulumi.Input<Map<String, dynamic>?>? anyValidServiceToken;
  final pulumi.Input<AccessApplicationPolicyRequireAuthContext?>? authContext;
  final pulumi.Input<AccessApplicationPolicyRequireAuthMethod?>? authMethod;
  final pulumi.Input<AccessApplicationPolicyRequireAzureAd?>? azureAd;
  final pulumi.Input<Map<String, dynamic>?>? certificate;
  final pulumi.Input<AccessApplicationPolicyRequireCommonName?>? commonName;
  final pulumi.Input<AccessApplicationPolicyRequireDevicePosture?>? devicePosture;
  final pulumi.Input<AccessApplicationPolicyRequireEmail?>? email;
  final pulumi.Input<AccessApplicationPolicyRequireEmailDomain?>? emailDomain;
  final pulumi.Input<AccessApplicationPolicyRequireEmailList?>? emailList;
  /// An empty object which matches on all users.
  final pulumi.Input<Map<String, dynamic>?>? everyone;
  final pulumi.Input<AccessApplicationPolicyRequireExternalEvaluation?>? externalEvaluation;
  final pulumi.Input<AccessApplicationPolicyRequireGeo?>? geo;
  final pulumi.Input<AccessApplicationPolicyRequireGithubOrganization?>? githubOrganization;
  final pulumi.Input<AccessApplicationPolicyRequireGroup?>? group;
  final pulumi.Input<AccessApplicationPolicyRequireGsuite?>? gsuite;
  final pulumi.Input<AccessApplicationPolicyRequireIp?>? ip;
  final pulumi.Input<AccessApplicationPolicyRequireIpList?>? ipList;
  final pulumi.Input<AccessApplicationPolicyRequireLinkedAppToken?>? linkedAppToken;
  final pulumi.Input<AccessApplicationPolicyRequireLoginMethod?>? loginMethod;
  final pulumi.Input<AccessApplicationPolicyRequireOidc?>? oidc;
  final pulumi.Input<AccessApplicationPolicyRequireOkta?>? okta;
  final pulumi.Input<AccessApplicationPolicyRequireSaml?>? saml;
  final pulumi.Input<AccessApplicationPolicyRequireServiceToken?>? serviceToken;

  /// Creates a new [AccessApplicationPolicyRequire].
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
  const AccessApplicationPolicyRequire({
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
      'authContext': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyRequireAuthContext, Map<String, dynamic>>(authContext, (value) => value.toMap()),
      'authMethod': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyRequireAuthMethod, Map<String, dynamic>>(authMethod, (value) => value.toMap()),
      'azureAd': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyRequireAzureAd, Map<String, dynamic>>(azureAd, (value) => value.toMap()),
      'certificate': ?certificate,
      'commonName': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyRequireCommonName, Map<String, dynamic>>(commonName, (value) => value.toMap()),
      'devicePosture': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyRequireDevicePosture, Map<String, dynamic>>(devicePosture, (value) => value.toMap()),
      'email': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyRequireEmail, Map<String, dynamic>>(email, (value) => value.toMap()),
      'emailDomain': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyRequireEmailDomain, Map<String, dynamic>>(emailDomain, (value) => value.toMap()),
      'emailList': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyRequireEmailList, Map<String, dynamic>>(emailList, (value) => value.toMap()),
      'everyone': ?everyone,
      'externalEvaluation': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyRequireExternalEvaluation, Map<String, dynamic>>(externalEvaluation, (value) => value.toMap()),
      'geo': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyRequireGeo, Map<String, dynamic>>(geo, (value) => value.toMap()),
      'githubOrganization': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyRequireGithubOrganization, Map<String, dynamic>>(githubOrganization, (value) => value.toMap()),
      'group': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyRequireGroup, Map<String, dynamic>>(group, (value) => value.toMap()),
      'gsuite': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyRequireGsuite, Map<String, dynamic>>(gsuite, (value) => value.toMap()),
      'ip': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyRequireIp, Map<String, dynamic>>(ip, (value) => value.toMap()),
      'ipList': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyRequireIpList, Map<String, dynamic>>(ipList, (value) => value.toMap()),
      'linkedAppToken': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyRequireLinkedAppToken, Map<String, dynamic>>(linkedAppToken, (value) => value.toMap()),
      'loginMethod': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyRequireLoginMethod, Map<String, dynamic>>(loginMethod, (value) => value.toMap()),
      'oidc': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyRequireOidc, Map<String, dynamic>>(oidc, (value) => value.toMap()),
      'okta': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyRequireOkta, Map<String, dynamic>>(okta, (value) => value.toMap()),
      'saml': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyRequireSaml, Map<String, dynamic>>(saml, (value) => value.toMap()),
      'serviceToken': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyRequireServiceToken, Map<String, dynamic>>(serviceToken, (value) => value.toMap()),
    };
  }

  factory AccessApplicationPolicyRequire.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyRequire(
      anyValidServiceToken: (() { final guardedValue = map['anyValidServiceToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      authContext: (() { final guardedValue = map['authContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyRequireAuthContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authMethod: (() { final guardedValue = map['authMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyRequireAuthMethod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureAd: (() { final guardedValue = map['azureAd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyRequireAzureAd.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      commonName: (() { final guardedValue = map['commonName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyRequireCommonName.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      devicePosture: (() { final guardedValue = map['devicePosture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyRequireDevicePosture.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyRequireEmail.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emailDomain: (() { final guardedValue = map['emailDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyRequireEmailDomain.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emailList: (() { final guardedValue = map['emailList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyRequireEmailList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      everyone: (() { final guardedValue = map['everyone']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      externalEvaluation: (() { final guardedValue = map['externalEvaluation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyRequireExternalEvaluation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      geo: (() { final guardedValue = map['geo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyRequireGeo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      githubOrganization: (() { final guardedValue = map['githubOrganization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyRequireGithubOrganization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyRequireGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gsuite: (() { final guardedValue = map['gsuite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyRequireGsuite.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyRequireIp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipList: (() { final guardedValue = map['ipList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyRequireIpList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedAppToken: (() { final guardedValue = map['linkedAppToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyRequireLinkedAppToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loginMethod: (() { final guardedValue = map['loginMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyRequireLoginMethod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oidc: (() { final guardedValue = map['oidc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyRequireOidc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      okta: (() { final guardedValue = map['okta']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyRequireOkta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      saml: (() { final guardedValue = map['saml']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyRequireSaml.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceToken: (() { final guardedValue = map['serviceToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyRequireServiceToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
