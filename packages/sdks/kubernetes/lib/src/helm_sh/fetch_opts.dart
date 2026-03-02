// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional options to customize the fetching of the Helm chart.
class FetchOpts {
  /// Verify certificates of HTTPS-enabled servers using this CA bundle.
  final pulumi.Input<String>? caFile;
  /// Identify HTTPS client using this SSL certificate file.
  final pulumi.Input<String>? certFile;
  /// Location to write the chart. If this and tardir are specified, tardir is appended to this (default ".").
  final pulumi.Input<String>? destination;
  /// Use development versions, too. Equivalent to version '>0.0.0-0'. If –version is set, this is ignored.
  final pulumi.Input<bool>? devel;
  /// Location of your Helm config. Overrides $HELM_HOME (default "/Users/abc/.helm").
  final pulumi.Input<String>? home;
  /// Identify HTTPS client using this SSL key file.
  final pulumi.Input<String>? keyFile;
  /// Keyring containing public keys (default “/Users/abc/.gnupg/pubring.gpg”).
  final pulumi.Input<String>? keyring;
  /// Chart repository password.
  final pulumi.Input<String>? password;
  /// Fetch the provenance file, but don’t perform verification.
  final pulumi.Input<String>? prov;
  /// Chart repository url where to locate the requested chart.
  final pulumi.Input<String>? repo;
  /// If set to false, will leave the chart as a tarball after downloading.
  final pulumi.Input<bool>? untar;
  /// If untar is specified, this flag specifies the name of the directory into which the chart is expanded (default ".").
  final pulumi.Input<String>? untardir;
  /// Chart repository username.
  final pulumi.Input<String>? username;
  /// Verify the package against its signature.
  final pulumi.Input<bool>? verify;
  /// Specific version of a chart. Without this, the latest version is fetched.
  final pulumi.Input<String>? version;

  /// Creates a new [FetchOpts].
  /// [caFile] Verify certificates of HTTPS-enabled servers using this CA bundle.
  /// [certFile] Identify HTTPS client using this SSL certificate file.
  /// [destination] Location to write the chart. If this and tardir are specified, tardir is appended to this (default ".").
  /// [devel] Use development versions, too. Equivalent to version '>0.0.0-0'. If –version is set, this is ignored.
  /// [home] Location of your Helm config. Overrides $HELM_HOME (default "/Users/abc/.helm").
  /// [keyFile] Identify HTTPS client using this SSL key file.
  /// [keyring] Keyring containing public keys (default “/Users/abc/.gnupg/pubring.gpg”).
  /// [password] Chart repository password.
  /// [prov] Fetch the provenance file, but don’t perform verification.
  /// [repo] Chart repository url where to locate the requested chart.
  /// [untar] If set to false, will leave the chart as a tarball after downloading.
  /// [untardir] If untar is specified, this flag specifies the name of the directory into which the chart is expanded (default ".").
  /// [username] Chart repository username.
  /// [verify] Verify the package against its signature.
  /// [version] Specific version of a chart. Without this, the latest version is fetched.
  FetchOpts({
    this.caFile,
    this.certFile,
    this.destination,
    this.devel,
    this.home,
    this.keyFile,
    this.keyring,
    this.password,
    this.prov,
    this.repo,
    this.untar,
    this.untardir,
    this.username,
    this.verify,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caFile': ?caFile,
      'certFile': ?certFile,
      'destination': ?destination,
      'devel': ?devel,
      'home': ?home,
      'keyFile': ?keyFile,
      'keyring': ?keyring,
      'password': ?password,
      'prov': ?prov,
      'repo': ?repo,
      'untar': ?untar,
      'untardir': ?untardir,
      'username': ?username,
      'verify': ?verify,
      'version': ?version,
    };
  }

  factory FetchOpts.fromMap(Map<String, dynamic> map) {
    return FetchOpts(
      caFile: map['caFile'] == null ? null : (map['caFile']! as String).input(),
      certFile: map['certFile'] == null ? null : (map['certFile']! as String).input(),
      destination: map['destination'] == null ? null : (map['destination']! as String).input(),
      devel: map['devel'] == null ? null : (map['devel']! as bool).input(),
      home: map['home'] == null ? null : (map['home']! as String).input(),
      keyFile: map['keyFile'] == null ? null : (map['keyFile']! as String).input(),
      keyring: map['keyring'] == null ? null : (map['keyring']! as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      prov: map['prov'] == null ? null : (map['prov']! as String).input(),
      repo: map['repo'] == null ? null : (map['repo']! as String).input(),
      untar: map['untar'] == null ? null : (map['untar']! as bool).input(),
      untardir: map['untardir'] == null ? null : (map['untardir']! as String).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
      verify: map['verify'] == null ? null : (map['verify']! as bool).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

