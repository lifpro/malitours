class SiteModel {
  String id;
  String nom;
  String ville;
  String adresse;
  double tarif;
  String image;
  SiteModel(
      {required this.id,
      required this.nom,
      required this.adresse,
      required this.tarif,
      required this.ville,
      required this.image});
}
