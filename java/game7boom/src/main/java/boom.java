import java.io.*;

public class boom {
    public static void main(String args[]) {
        int[] arr = new int[101];
        int counter = 1;
        for(int i=1;i<=100;i++)
        {
            if(i % 7 == 0)
            arr[i] = 7;
            else
                arr[i] = i;
        }

        BufferedReader reader;
        try {
            reader = new BufferedReader(new FileReader("check.txt"));
            String line = reader.readLine();

            while (line != null) {
                if (Integer.valueOf(line) != arr[counter]) {
                    System.out.println("line number: "+counter+ ", bad line: " + line);
                    System.exit(1);
                }
                // read next line
                line = reader.readLine();
                counter++;
            }
            reader.close();
            if(counter == 101 )
            System.out.println("Check compleete! The password is : 'jumanji'");
            else
                System.out.println("empty file or not enough numbers counter is: "+counter);

        } catch (IOException e) {
            System.out.println("Error reading file 'check.txt': "+e.getMessage());
        }




    }

}