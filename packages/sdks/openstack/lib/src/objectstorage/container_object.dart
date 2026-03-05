import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_object_args.dart';
import 'container_object_state.dart';

/// Manages a V1 container object resource within OpenStack.
///
/// ## Example Usage
///
/// ### Example with simple content
///
///
/// ```yaml
/// resources:
///   container1:
///     type: openstack:objectstorage:Container
///     name: container_1
///     properties:
///       region: RegionOne
///       name: tf-test-container-1
///       metadata:
///         - test: 'true'
///       contentType: application/json
///   doc1:
///     type: openstack:objectstorage:ContainerObject
///     name: doc_1
///     properties:
///       region: RegionOne
///       containerName: ${container1.name}
///       name: test/default.json
///       metadata:
///         - test: 'true'
///       contentType: application/json
///       content: |2
///                        {
///                          \"foo\" : \"bar\"
///                        }
/// ```
///
///
/// ### Example with content from file
///
///
/// ```yaml
/// resources:
///   container1:
///     type: openstack:objectstorage:Container
///     name: container_1
///     properties:
///       region: RegionOne
///       name: tf-test-container-1
///       metadata:
///         - test: 'true'
///       contentType: application/json
///   doc1:
///     type: openstack:objectstorage:ContainerObject
///     name: doc_1
///     properties:
///       region: RegionOne
///       containerName: ${container1.name}
///       name: test/default.json
///       metadata:
///         - test: 'true'
///       contentType: application/json
///       source: ./default.json
/// ```
class ContainerObject extends pulumi.CustomResource {
  /// A unique (within an account) name for the container.
  /// The container name must be from 1 to 256 characters long and can start
  /// with any character and contain any pattern. Character set must be UTF-8.
  /// The container name cannot contain a slash (/) character because this
  /// character delimits the container and object name. For example, the path
  /// /v1/account/www/pages specifies the www container, not the www/pages container.
  late final pulumi.Output<String> containerName;
  /// A string representing the content of the object. Conflicts with
  /// `source` and `copy_from`.
  late final pulumi.Output<String?> content;
  /// A string which specifies the override behavior for
  /// the browser. For example, this header might specify that the browser use a download
  /// program to save this file rather than show the file, which is the default.
  late final pulumi.Output<String> contentDisposition;
  /// A string representing the value of the Content-Encoding
  /// metadata.
  late final pulumi.Output<String> contentEncoding;
  /// If the operation succeeds, this value is zero (0) or the
  /// length of informational or error text in the response body.
  late final pulumi.Output<int> contentLength;
  /// A string which sets the MIME type for the object.
  late final pulumi.Output<String> contentType;
  /// A string representing the name of an object
  /// used to create the new object by copying the `copy_from` object. The value is in form
  /// {container}/{object}. You must UTF-8-encode and then URL-encode the names of the
  /// container and object before you include them in the header. Conflicts with `source` and
  /// `content`.
  late final pulumi.Output<String?> copyFrom;
  /// The date and time the system responded to the request, using the preferred
  /// format of RFC 7231 as shown in this example Thu, 16 Jun 2016 15:10:38 GMT. The
  /// time is always in UTC.
  late final pulumi.Output<String> date;
  /// An integer representing the number of seconds after which the
  /// system removes the object. Internally, the Object Storage system stores this value in
  /// the X-Delete-At metadata item.
  late final pulumi.Output<int?> deleteAfter;
  /// An string representing the date when the system removes the object.
  /// For example, "2015-08-26" is equivalent to Mon, Wed, 26 Aug 2015 00:00:00 GMT.
  late final pulumi.Output<String> deleteAt;
  /// If set to true, Object Storage guesses the content
  /// type based on the file extension and ignores the value sent in the Content-Type
  /// header, if present.
  late final pulumi.Output<bool?> detectContentType;
  /// Used to trigger updates. The only meaningful value is ${md5(file("path/to/file"))}.
  late final pulumi.Output<String> etag;
  /// The date and time when the object was last modified. The date and time
  /// stamp format is ISO 8601:
  /// CCYY-MM-DDThh:mm:ss±hh:mm
  /// For example, 2015-08-27T09:49:58-05:00.
  /// The ±hh:mm value, if included, is the time zone as an offset from UTC. In the previous
  /// example, the offset value is -05:00.
  late final pulumi.Output<String> lastModified;
  late final pulumi.Output<Map<String, String>?> metadata;
  /// A unique name for the object.
  late final pulumi.Output<String> name;
  /// A string set to specify that this is a dynamic large
  /// object manifest object. The value is the container and object name prefix of the
  /// segment objects in the form container/prefix. You must UTF-8-encode and then
  /// URL-encode the names of the container and prefix before you include them in this
  /// header.
  late final pulumi.Output<String> objectManifest;
  /// The region in which to create the container. If
  /// omitted, the `region` argument of the provider is used. Changing this
  /// creates a new container.
  late final pulumi.Output<String> region;
  /// A string representing the local path of a file which will be used
  /// as the object's content. Conflicts with `source` and `copy_from`.
  late final pulumi.Output<String?> source;
  /// A unique transaction ID for this request. Your service provider might
  /// need this value if you report a problem.
  late final pulumi.Output<String> transId;

  /// Creates a new [ContainerObject].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContainerObject]. {@macro pulumi_objectstorage_container_object_container_object_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContainerObject(
    String name, {
    ContainerObjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:objectstorage/containerObject:ContainerObject',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    containerName = registerOutput<String>('containerName');
    content = registerOutput<String?>('content');
    contentDisposition = registerOutput<String>('contentDisposition');
    contentEncoding = registerOutput<String>('contentEncoding');
    contentLength = registerOutput<int>('contentLength');
    contentType = registerOutput<String>('contentType');
    copyFrom = registerOutput<String?>('copyFrom');
    date = registerOutput<String>('date');
    deleteAfter = registerOutput<int?>('deleteAfter');
    deleteAt = registerOutput<String>('deleteAt');
    detectContentType = registerOutput<bool?>('detectContentType');
    etag = registerOutput<String>('etag');
    lastModified = registerOutput<String>('lastModified');
    metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    objectManifest = registerOutput<String>('objectManifest');
    region = registerOutput<String>('region');
    source = registerOutput<String?>('source');
    transId = registerOutput<String>('transId');
  }

  /// Gets an existing [ContainerObject] resource's state with the given [name] and [id].
  static ContainerObject get(
    String name,
    pulumi.Input<String> id, {
    ContainerObjectState? state,
  }) {
    return ContainerObject._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ContainerObject._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:objectstorage/containerObject:ContainerObject',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    containerName = registerOutput<String>('containerName');
    content = registerOutput<String?>('content');
    contentDisposition = registerOutput<String>('contentDisposition');
    contentEncoding = registerOutput<String>('contentEncoding');
    contentLength = registerOutput<int>('contentLength');
    contentType = registerOutput<String>('contentType');
    copyFrom = registerOutput<String?>('copyFrom');
    date = registerOutput<String>('date');
    deleteAfter = registerOutput<int?>('deleteAfter');
    deleteAt = registerOutput<String>('deleteAt');
    detectContentType = registerOutput<bool?>('detectContentType');
    etag = registerOutput<String>('etag');
    lastModified = registerOutput<String>('lastModified');
    metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    objectManifest = registerOutput<String>('objectManifest');
    region = registerOutput<String>('region');
    source = registerOutput<String?>('source');
    transId = registerOutput<String>('transId');
  }
}
