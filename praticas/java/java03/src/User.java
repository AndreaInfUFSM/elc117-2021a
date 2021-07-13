class User {
  private String name;
  private int id;

  private static int count = 0;

  public User() {
    this("randomusername");
  }
  public User(String name) {
    this.name = name;
    this.id = count;
    count++;
  }
  public String getName() {
    return name;
  }
  public static int getCount() {
    return count;
  }
  public static void main(String[] args) {
    User u1 = new User();
    User u2 = new User("myusername");
    System.out.println(u1.getName());
    System.out.println(u2.getName());
  }
}
