public class Circle {
   private double x;
   private double y;
   private double r;
   
   public Circle() {
      x = y = r = 0.0;
   }
   public double area() {
      return Math.PI * r * r;
   }
   // O método main é chamado pela JVM para iniciar a execução de um programa.
   // Geralmente, este método fica em uma classe separada, com acesso às demais classes.
   public static void main(String[] args) {
      Circle c = new Circle();
      System.out.println("Area do circulo: " + c.area());
   }
}
