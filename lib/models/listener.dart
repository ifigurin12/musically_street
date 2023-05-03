class ListenerUser {
  String name; 
  String imageUrl = "https://png.pngtree.com/png-clipart/20210129/ourmid/pngtree-mens-default-avatar-png-image_2813163.jpg";  

  ListenerUser(String? imageUrl, {required this.name})
  {
    if (imageUrl != null) 
    {
      this.imageUrl = imageUrl;
    }
  }
}