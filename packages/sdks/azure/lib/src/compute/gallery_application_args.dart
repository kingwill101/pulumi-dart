// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_gallery_application_gallery_application_args_doc}
/// The set of arguments for GalleryApplication.
/// {@endtemplate}
/// {@macro pulumi_compute_gallery_application_gallery_application_args_doc}
class GalleryApplicationArgs {
  /// A description of the Gallery Application.
  final pulumi.Input<String>? description;
  /// The end of life date in RFC3339 format of the Gallery Application.
  final pulumi.Input<String>? endOfLifeDate;
  /// The End User Licence Agreement of the Gallery Application.
  final pulumi.Input<String>? eula;
  /// The ID of the Shared Image Gallery. Changing this forces a new resource to be created.
  final pulumi.Input<String> galleryId;
  /// The Azure Region where the Gallery Application exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Gallery Application. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The URI containing the Privacy Statement associated with the Gallery Application.
  final pulumi.Input<String>? privacyStatementUri;
  /// The URI containing the Release Notes associated with the Gallery Application.
  final pulumi.Input<String>? releaseNoteUri;
  /// The type of the Operating System supported for the Gallery Application. Possible values are `Linux` and `Windows`. Changing this forces a new resource to be created.
  final pulumi.Input<String> supportedOsType;
  /// A mapping of tags to assign to the Gallery Application.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GalleryApplicationArgs].
  /// [description] A description of the Gallery Application.
  /// [endOfLifeDate] The end of life date in RFC3339 format of the Gallery Application.
  /// [eula] The End User Licence Agreement of the Gallery Application.
  /// [galleryId] The ID of the Shared Image Gallery. Changing this forces a new resource to be created.
  /// [location] The Azure Region where the Gallery Application exists. Changing this forces a new resource to be created.
  /// [name] The name of the Gallery Application. Changing this forces a new resource to be created.
  /// [privacyStatementUri] The URI containing the Privacy Statement associated with the Gallery Application.
  /// [releaseNoteUri] The URI containing the Release Notes associated with the Gallery Application.
  /// [supportedOsType] The type of the Operating System supported for the Gallery Application. Possible values are `Linux` and `Windows`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Gallery Application.
  GalleryApplicationArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? endOfLifeDate,
    pulumi.Output<String>? eula,
    required pulumi.Output<String> galleryId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? privacyStatementUri,
    pulumi.Output<String>? releaseNoteUri,
    required pulumi.Output<String> supportedOsType,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      endOfLifeDate = pulumi.Input.asOptionalInput<String>(endOfLifeDate),
      eula = pulumi.Input.asOptionalInput<String>(eula),
      galleryId = pulumi.Input.asInput<String>(galleryId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      privacyStatementUri = pulumi.Input.asOptionalInput<String>(privacyStatementUri),
      releaseNoteUri = pulumi.Input.asOptionalInput<String>(releaseNoteUri),
      supportedOsType = pulumi.Input.asInput<String>(supportedOsType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'endOfLifeDate': ?endOfLifeDate,
      'eula': ?eula,
      'galleryId': galleryId,
      'location': ?location,
      'name': ?name,
      'privacyStatementUri': ?privacyStatementUri,
      'releaseNoteUri': ?releaseNoteUri,
      'supportedOsType': supportedOsType,
      'tags': ?tags,
    };
  }

  factory GalleryApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GalleryApplicationArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      endOfLifeDate: map['endOfLifeDate'] == null ? null : pulumi.Output.create<String>(map['endOfLifeDate'] as String),
      eula: map['eula'] == null ? null : pulumi.Output.create<String>(map['eula'] as String),
      galleryId: pulumi.Output.create<String>(map['galleryId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      privacyStatementUri: map['privacyStatementUri'] == null ? null : pulumi.Output.create<String>(map['privacyStatementUri'] as String),
      releaseNoteUri: map['releaseNoteUri'] == null ? null : pulumi.Output.create<String>(map['releaseNoteUri'] as String),
      supportedOsType: pulumi.Output.create<String>(map['supportedOsType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

