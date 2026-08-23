// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getImage.
class GetImageResult {
  /// CPU architecture compatible with the Image.
  final String architecture;
  /// Point in time when the Image was created (in RFC3339 format).
  final String created;
  /// Point in time when the Image was marked as deprecated (in RFC3339 format).
  final String deprecated;
  /// Description of the Image.
  final String description;
  /// ID of the Image.
  final int? id;
  /// Include deprecated images.
  final bool? includeDeprecated;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final Map<String, String> labels;
  /// Sort results by created date, and return the most recent result.
  final bool? mostRecent;
  /// Name of the Image, only present when the type is `system`.
  final String? name;
  /// Flavor of the operating system contained in the Image.
  final String osFlavor;
  /// Version of the operating system contained in the Image.
  final String osVersion;
  /// Whether the Image is optimized for a rapid deployment.
  final bool rapidDeploy;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector).
  final String? selector;
  /// Type of the Image, for example `system`, `backup` or `snapshot`.
  final String type;
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
  /// [description] Description of the Image.
  /// [id] ID of the Image.
  /// [includeDeprecated] Include deprecated images.
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [mostRecent] Sort results by created date, and return the most recent result.
  /// [name] Name of the Image, only present when the type is `system`.
  /// [osFlavor] Flavor of the operating system contained in the Image.
  /// [osVersion] Version of the operating system contained in the Image.
  /// [rapidDeploy] Whether the Image is optimized for a rapid deployment.
  /// [selector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/cloud#label-selector).
  /// [type] Type of the Image, for example `system`, `backup` or `snapshot`.
  /// [withArchitecture] Filter results by architecture, for example `x86` (default) or `arm`.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/hetzner#label-selector).
  /// [withStatuses] Filter results by statuses, for example `creating` or `available`.
  const GetImageResult({
    required this.architecture,
    required this.created,
    required this.deprecated,
    required this.description,
    this.id,
    this.includeDeprecated,
    required this.labels,
    this.mostRecent,
    this.name,
    required this.osFlavor,
    required this.osVersion,
    required this.rapidDeploy,
    this.selector,
    required this.type,
    this.withArchitecture,
    this.withSelector,
    this.withStatuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': architecture,
      'created': created,
      'deprecated': deprecated,
      'description': description,
      'id': ?id,
      'includeDeprecated': ?includeDeprecated,
      'labels': labels,
      'mostRecent': ?mostRecent,
      'name': ?name,
      'osFlavor': osFlavor,
      'osVersion': osVersion,
      'rapidDeploy': rapidDeploy,
      'selector': ?selector,
      'type': type,
      'withArchitecture': ?withArchitecture,
      'withSelector': ?withSelector,
      'withStatuses': ?withStatuses,
    };
  }

  factory GetImageResult.fromMap(Map<String, dynamic> map) {
    return GetImageResult(
      architecture: map['architecture'] as String,
      created: map['created'] as String,
      deprecated: map['deprecated'] as String,
      description: map['description'] as String,
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as int; })(),
      includeDeprecated: (() { final guardedValue = map['includeDeprecated']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      labels: (map['labels'] as Map).cast<String, String>(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osFlavor: map['osFlavor'] as String,
      osVersion: map['osVersion'] as String,
      rapidDeploy: map['rapidDeploy'] as bool,
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
      withArchitecture: (() { final guardedValue = map['withArchitecture']; if (guardedValue == null) return null; return guardedValue as String; })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
      withStatuses: (() { final guardedValue = map['withStatuses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
