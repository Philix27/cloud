class ValueImage {
  final String repository;

  /// Overrides the image tag whose default is the chart appVersion.
  final String tag;
  final String pullPolicy;

  ValueImage({
    required this.repository,
    required this.tag,
    required this.pullPolicy,
  });
}

class ServiceAccount {
  /// Specifies whether a service account should be created
  bool create = true;

  /// The name of the service account to use.
  /// If not set and create is true, a name is generated using the fullname template
  String name = '';

  /// Annotations to add to the service account
  Map annotations = {};
}

enum Porter {
  ClusterIP,
  NodePort,
}

class Service {
  Porter type = Porter.ClusterIP;
  int port = 80;
}

class Ingress {
  bool enabled = false;
  String className = "";
  Map annotations = {};
}

class ChartValues {
  /// Default values for blogs.
  /// This is a YAML-formatted file.
  /// Declare variables to be passed into your templates.

  int replicaCount = 1;
  List<String> imagePullSecrets = [];
  ValueImage image = ValueImage(
    repository: "",
    pullPolicy: "IfNotPresent",
    tag: "",
  );

  String nameOverride = "";
  String fullnameOverride = "";

  Map podAnnotations = {};

  Map podSecurityContext = {};

  /// fsGroup= 2000

  Map securityContext = {};

  /// capabilities=
  ///   drop=
  ///   - ALL
  /// readOnlyRootFilesystem= true
  /// runAsNonRoot= true
  /// runAsUser= 1000

  /// kubernetes.io/ingress.class= nginx
  /// kubernetes.io/tls-acme= "true"

  // hosts=
  //   - host= chart-example.local
  //     paths=
  //       - path= /
  //         pathType= ImplementationSpecific
  // tls= []

  ///  - secretName= chart-example-tls
  ///    hosts=
  ///      - chart-example.local

  Map resources = {};

  /// We usually recommend not to specify default resources and to leave this as a conscious
  /// choice for the user. This also increases chances charts run on environments with little
  /// resources, such as Minikube. If you do want to specify resources, uncomment the following
  /// lines, adjust them as necessary, and remove the curly braces after 'resources='.
  /// limits=
  ///   cpu= 100m
  ///   memory= 128Mi
  /// requests=
  ///   cpu= 100m
  ///   memory= 128Mi

// autoscaling=
//   enabled= false
//   minReplicas= 1
//   maxReplicas= 100
//   targetCPUUtilizationPercentage= 80

  /// targetMemoryUtilizationPercentage= 80

  Map nodeSelector = {};

  List tolerations = [];

  Map affinity = {};
}
