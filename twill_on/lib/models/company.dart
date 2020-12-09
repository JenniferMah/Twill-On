class Company {
  final String companyId;
  final String companyName;
  final String companyImageUrl;

  Company({
    this.companyId,
    this.companyName,
    this.companyImageUrl,
  });
}

List<Company> businesses = [
  Company(
    companyId: 't-mobile',
    companyName: 'T-mobile',
    companyImageUrl: 'assets/images/tmobile.jpg',
  ),
  Company(
    companyId: 'delta-airlines',
    companyName: 'Delta Airlines',
    companyImageUrl: 'assets/images/delta.jpg',
  ),
  Company(
    companyId: 'best-buy',
    companyName: 'Best Buy',
    companyImageUrl: 'assets/images/bestbuy.jpg',
  ),
  Company(
    companyId: 'nike',
    companyName: 'Nike',
    companyImageUrl: 'assets/images/nike.jpg',
  ),
];
