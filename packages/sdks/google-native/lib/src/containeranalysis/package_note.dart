// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'digest.dart';
import 'distribution.dart';
import 'license.dart';
import 'package_note_architecture.dart';
import 'version.dart';

/// PackageNote represents a particular package version.
class PackageNote {
  /// The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
  final pulumi.Input<PackageNoteArchitecture>? architecture;
  /// The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package. The cpe_uri will be blank for language packages.
  final pulumi.Input<String>? cpeUri;
  /// The description of this package.
  final pulumi.Input<String>? description;
  /// Hash value, typically a file digest, that allows unique identification a specific package.
  final pulumi.Input<List<Digest>>? digest;
  /// Deprecated. The various channels by which a package is distributed.
  final pulumi.Input<List<Distribution>>? distribution;
  /// Licenses that have been declared by the authors of the package.
  final pulumi.Input<License>? license;
  /// A freeform text denoting the maintainer of this package.
  final pulumi.Input<String>? maintainer;
  /// Immutable. The name of the package.
  final pulumi.Input<String> name;
  /// The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
  final pulumi.Input<String>? packageType;
  /// The homepage for this package.
  final pulumi.Input<String>? url;
  /// The version of the package.
  final pulumi.Input<Version>? version;

  /// Creates a new [PackageNote].
  /// [architecture] The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
  /// [cpeUri] The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package. The cpe_uri will be blank for language packages.
  /// [description] The description of this package.
  /// [digest] Hash value, typically a file digest, that allows unique identification a specific package.
  /// [distribution] Deprecated. The various channels by which a package is distributed.
  /// [license] Licenses that have been declared by the authors of the package.
  /// [maintainer] A freeform text denoting the maintainer of this package.
  /// [name] Immutable. The name of the package.
  /// [packageType] The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
  /// [url] The homepage for this package.
  /// [version] The version of the package.
  PackageNote({
    this.architecture,
    this.cpeUri,
    this.description,
    this.digest,
    this.distribution,
    this.license,
    this.maintainer,
    required this.name,
    this.packageType,
    this.url,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?pulumi.Input.mapOptionalInputValue<PackageNoteArchitecture, String>(architecture, (value) => value.wireValue),
      'cpeUri': ?cpeUri,
      'description': ?description,
      'digest': ?pulumi.Input.mapOptionalInputValue<List<Digest>, List<Map<String, dynamic>>>(digest, (value) => pulumi.Input.encodeList<Digest, Map<String, dynamic>>(value, (value) => value.toMap())),
      'distribution': ?pulumi.Input.mapOptionalInputValue<List<Distribution>, List<Map<String, dynamic>>>(distribution, (value) => pulumi.Input.encodeList<Distribution, Map<String, dynamic>>(value, (value) => value.toMap())),
      'license': ?pulumi.Input.mapOptionalInputValue<License, Map<String, dynamic>>(license, (value) => value.toMap()),
      'maintainer': ?maintainer,
      'name': name,
      'packageType': ?packageType,
      'url': ?url,
      'version': ?pulumi.Input.mapOptionalInputValue<Version, Map<String, dynamic>>(version, (value) => value.toMap()),
    };
  }

  factory PackageNote.fromMap(Map<String, dynamic> map) {
    return PackageNote(
      architecture: (() { final guardedValue = map['architecture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PackageNoteArchitecture.fromValue(guardedValue as String)); })(),
      cpeUri: (() { final guardedValue = map['cpeUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      digest: (() { final guardedValue = map['digest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Digest>(guardedValue, (value) => Digest.fromMap((value as Map).cast<String, dynamic>()))); })(),
      distribution: (() { final guardedValue = map['distribution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Distribution>(guardedValue, (value) => Distribution.fromMap((value as Map).cast<String, dynamic>()))); })(),
      license: (() { final guardedValue = map['license']; if (guardedValue == null) return null; return pulumi.Input.fromValue(License.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maintainer: (() { final guardedValue = map['maintainer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      packageType: (() { final guardedValue = map['packageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Version.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

