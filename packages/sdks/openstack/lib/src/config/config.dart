// ignore_for_file: unused_element, unnecessary_cast

import 'dart:convert';
import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration values for the openstack package.
class OpenstackConfig {
  const OpenstackConfig();

  String? _raw(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.getConfig(key);
  }

  bool _isSecret(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.isConfigSecret(key);
  }

  /// If set to `false`, OpenStack authorization won't be perfomed
  /// automatically, if the initial auth token get expired. Defaults to `true`
  bool? get allowReauth {
    final raw = _raw('allowReauth');
    return (raw).toBool();
  }

  bool get allowReauthIsSecret => _isSecret('allowReauth');

  /// Application Credential ID to login with.
  String? get applicationCredentialId {
    final raw = _raw('applicationCredentialId');
    return raw;
  }

  bool get applicationCredentialIdIsSecret =>
      _isSecret('applicationCredentialId');

  /// Application Credential name to login with.
  String? get applicationCredentialName {
    final raw = _raw('applicationCredentialName');
    return raw;
  }

  bool get applicationCredentialNameIsSecret =>
      _isSecret('applicationCredentialName');

  /// Application Credential secret to login with.
  String? get applicationCredentialSecret {
    final raw = _raw('applicationCredentialSecret');
    return raw;
  }

  bool get applicationCredentialSecretIsSecret =>
      _isSecret('applicationCredentialSecret');

  /// The Identity authentication URL.
  String? get authUrl {
    final raw = _raw('authUrl');
    return raw;
  }

  bool get authUrlIsSecret => _isSecret('authUrl');

  /// A Custom CA certificate.
  String? get cacertFile {
    final raw = _raw('cacertFile');
    return raw;
  }

  bool get cacertFileIsSecret => _isSecret('cacertFile');

  /// A client certificate to authenticate with.
  String? get cert {
    final raw = _raw('cert');
    return raw;
  }

  bool get certIsSecret => _isSecret('cert');

  /// An entry in a `clouds.yaml` file to use.
  String? get cloud {
    final raw = _raw('cloud');
    return raw;
  }

  bool get cloudIsSecret => _isSecret('cloud');

  /// The name of the Domain ID to scope to if no other domain is specified. Defaults to `default` (Identity v3).
  String? get defaultDomain {
    final raw = _raw('defaultDomain');
    return raw;
  }

  bool get defaultDomainIsSecret => _isSecret('defaultDomain');

  /// If set to `false`, OpenStack authorization will be perfomed,
  /// every time the service provider client is called. Defaults to `true`.
  bool? get delayedAuth {
    final raw = _raw('delayedAuth');
    return (raw).toBool();
  }

  bool get delayedAuthIsSecret => _isSecret('delayedAuth');

  /// If set to `true`, the HTTP `Cache-Control: no-cache` header will not be added by default to all API requests.
  bool? get disableNoCacheHeader {
    final raw = _raw('disableNoCacheHeader');
    return (raw).toBool();
  }

  bool get disableNoCacheHeaderIsSecret => _isSecret('disableNoCacheHeader');

  /// The ID of the Domain to scope to (Identity v3).
  String? get domainId {
    final raw = _raw('domainId');
    return raw;
  }

  bool get domainIdIsSecret => _isSecret('domainId');

  /// The name of the Domain to scope to (Identity v3).
  String? get domainName {
    final raw = _raw('domainName');
    return raw;
  }

  bool get domainNameIsSecret => _isSecret('domainName');

  /// Outputs very verbose logs with all calls made to and responses from OpenStack
  bool? get enableLogging {
    final raw = _raw('enableLogging');
    return (raw).toBool();
  }

  bool get enableLoggingIsSecret => _isSecret('enableLogging');

  /// A map of services with an endpoint to override what was
  /// from the Keystone catalog
  Map<String, String>? get endpointOverrides {
    final raw = _raw('endpointOverrides');
    return (() {
      final guardedValue = raw;
      if (guardedValue == null) return null;
      return (jsonDecode(guardedValue) as Map).cast<String, String>();
    })();
  }

  bool get endpointOverridesIsSecret => _isSecret('endpointOverrides');

  String? get endpointType {
    final raw = _raw('endpointType');
    return raw;
  }

  bool get endpointTypeIsSecret => _isSecret('endpointType');

  /// Trust self-signed certificates.
  bool? get insecure {
    final raw = _raw('insecure');
    return (raw).toBool();
  }

  bool get insecureIsSecret => _isSecret('insecure');

  /// A client private key to authenticate with.
  String? get key {
    final raw = _raw('key');
    return raw;
  }

  bool get keyIsSecret => _isSecret('key');

  /// How many times HTTP connection should be retried until giving up.
  int? get maxRetries {
    final raw = _raw('maxRetries');
    return (raw).toInt();
  }

  bool get maxRetriesIsSecret => _isSecret('maxRetries');

  /// Password to login with.
  String? get password {
    final raw = _raw('password');
    return raw;
  }

  bool get passwordIsSecret => _isSecret('password');

  /// The ID of the domain where the proejct resides (Identity v3).
  String? get projectDomainId {
    final raw = _raw('projectDomainId');
    return raw;
  }

  bool get projectDomainIdIsSecret => _isSecret('projectDomainId');

  /// The name of the domain where the project resides (Identity v3).
  String? get projectDomainName {
    final raw = _raw('projectDomainName');
    return raw;
  }

  bool get projectDomainNameIsSecret => _isSecret('projectDomainName');

  /// The OpenStack region to connect to.
  String? get region {
    final raw = _raw('region');
    return raw;
  }

  bool get regionIsSecret => _isSecret('region');

  /// Use Swift's authentication system instead of Keystone. Only used for
  /// interaction with Swift.
  bool? get swauth {
    final raw = _raw('swauth');
    return (raw).toBool();
  }

  bool get swauthIsSecret => _isSecret('swauth');

  /// If set to `true`, system scoped authorization will be enabled. Defaults to `false` (Identity v3).
  bool? get systemScope {
    final raw = _raw('systemScope');
    return (raw).toBool();
  }

  bool get systemScopeIsSecret => _isSecret('systemScope');

  /// The ID of the Tenant (Identity v2) or Project (Identity v3)
  /// to login with.
  String? get tenantId {
    final raw = _raw('tenantId');
    return raw;
  }

  bool get tenantIdIsSecret => _isSecret('tenantId');

  /// The name of the Tenant (Identity v2) or Project (Identity v3)
  /// to login with.
  String? get tenantName {
    final raw = _raw('tenantName');
    return raw;
  }

  bool get tenantNameIsSecret => _isSecret('tenantName');

  /// Authentication token to use as an alternative to username/password.
  String? get token {
    final raw = _raw('token');
    return raw;
  }

  bool get tokenIsSecret => _isSecret('token');

  /// The ID of the domain where the user resides (Identity v3).
  String? get userDomainId {
    final raw = _raw('userDomainId');
    return raw;
  }

  bool get userDomainIdIsSecret => _isSecret('userDomainId');

  /// The name of the domain where the user resides (Identity v3).
  String? get userDomainName {
    final raw = _raw('userDomainName');
    return raw;
  }

  bool get userDomainNameIsSecret => _isSecret('userDomainName');

  /// User ID to login with.
  String? get userId {
    final raw = _raw('userId');
    return raw;
  }

  bool get userIdIsSecret => _isSecret('userId');

  /// Username to login with.
  String? get userName {
    final raw = _raw('userName');
    return raw;
  }

  bool get userNameIsSecret => _isSecret('userName');
}

final config = OpenstackConfig();
