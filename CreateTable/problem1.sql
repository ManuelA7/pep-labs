     try(Connection connection = ConnectionUtil.getConnection();
          Statement s = connection.createStatement();
      ) {		      
          String sql = "CREATE TABLE song " +
                   "(id INTEGER not NULL, " +
                   " title VARCHAR(255), " + 
                   " artist VARCHAR(255), "  + 
                   " PRIMARY KEY ( id ))"; 

         s.executeUpdate(sql);
         System.out.println("Created table in given database...");   	  
      } catch (SQLException e) {
          System.out.println("problem1: " + e.getMessage() + '\n');
      } 
   }