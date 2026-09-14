// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getImage.
class GetImageResult {
  /// CPU architecture compatible with the Image.
  final String? architecture;
  /// Point in time when the Image was created (in RFC3339 format).
  final String? created;
  /// Point in time when the Image was marked as deprecated (in RFC3339 format).
  final String? deprecated;
  /// Date of the Image deprecation announcement.
  final String? deprecationAnnounced;
  /// Description of the Image.
  final String? description;
  /// ID of the Image.
  final int? id;
  /// Include deprecated images.
  final bool? includeDeprecated;
  /// Whether the Image is deprecated.
  final bool? isDeprecated;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final Map<String, String>? labels;
  /// Sort results by created date, and return the most recent result.
  final bool? mostRecent;
  /// Name of the Image, only present when the type is `system`.
  final String? name;
  /// Flavor of the operating system contained in the Image.
  final String? osFlavor;
  /// Version of the operating system contained in the Image.
  final String? osVersion;
  /// Whether the Image is optimized for a rapid deployment.
  final bool? rapidDeploy;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector).
  final String? selector;
  /// Type of the Image, for example `system`, `backup` or `snapshot`.
  final String? type;
  /// Date of the Image removal. After this date, the Image cannot be used anymore.
  final String? unavailableAfter;
  /// Filter results by architecture, for example `x86` (default) or `arm`.
  final String? withArchitecture;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/hetzner#label-selector).
  final String? withSelector;
  /// Filter results by statuses, for example `creating` or `available`.
  final List<String>? withStatuses;

  /// Creates a new [GetImageResult].
  /// [architecture] CPU architecture compatible with the Image.
  /// [created] Point in time when the Image was created (in RFC3339 format).
  /// [deprecated] Point in time when the Image was marked as deprecated (in RFC3339 format).
  /// [deprecationAnnounced] Date of the Image deprecation announcement.
  /// [description] Description of the Image.
  /// [id] ID of the Image.
  /// [includeDeprecated] Include deprecated images.
  /// [isDeprecated] Whether the Image is deprecated.
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [mostRecent] Sort results by created date, and return the most recent result.
  /// [name] Name of the Image, only present when the type is `system`.
  /// [osFlavor] Flavor of the operating system contained in the Image.
  /// [osVersion] Version of the operating system contained in the Image.
  /// [rapidDeploy] Whether the Image is optimized for a rapid deployment.
  /// [selector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector).
  /// [type] Type of the Image, for example `system`, `backup` or `snapshot`.
  /// [unavailableAfter] Date of the Image removal. After this date, the Image cannot be used anymore.
  /// [withArchitecture] Filter results by architecture, for example `x86` (default) or `arm`.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/hetzner#label-selector).
  /// [withStatuses] Filter results by statuses, for example `creating` or `available`.
  const GetImageResult({
    this.architecture,
    this.created,
    this.deprecated,
    this.deprecationAnnounced,
    this.description,
    this.id,
    this.includeDeprecated,
    this.isDeprecated,
    this.labels,
    this.mostRecent,
    this.name,
    this.osFlavor,
    this.osVersion,
    this.rapidDeploy,
    this.selector,
    this.type,
    this.unavailableAfter,
    this.withArchitecture,
    this.withSelector,
    this.withStatuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?architecture,
      'created': ?created,
      'deprecated': ?deprecated,
      'deprecationAnnounced': ?deprecationAnnounced,
      'description': ?description,
      'id': ?id,
      'includeDeprecated': ?includeDeprecated,
      'isDeprecated': ?isDeprecated,
      'labels': ?labels,
      'mostRecent': ?mostRecent,
      'name': ?name,
      'osFlavor': ?osFlavor,
      'osVersion': ?osVersion,
      'rapidDeploy': ?rapidDeploy,
      'selector': ?selector,
      'type': ?type,
      'unavailableAfter': ?unavailableAfter,
      'withArchitecture': ?withArchitecture,
      'withSelector': ?withSelector,
      'withStatuses': ?withStatuses,
    };
  }

  factory GetImageResult.fromMap(Map<String, dynamic> map) {
    return GetImageResult(
      architecture: (() { final guardedValue = map['architecture']; if (guardedValue == null) return null; return guardedValue as String; })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deprecated: (() { final guardedValue = map['deprecated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deprecationAnnounced: (() { final guardedValue = map['deprecationAnnounced']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      includeDeprecated: (() { final guardedValue = map['includeDeprecated']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isDeprecated: (() { final guardedValue = map['isDeprecated']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osFlavor: (() { final guardedValue = map['osFlavor']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osVersion: (() { final guardedValue = map['osVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rapidDeploy: (() { final guardedValue = map['rapidDeploy']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      unavailableAfter: (() { final guardedValue = map['unavailableAfter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      withArchitecture: (() { final guardedValue = map['withArchitecture']; if (guardedValue == null) return null; return guardedValue as String; })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
      withStatuses: (() { final guardedValue = map['withStatuses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
