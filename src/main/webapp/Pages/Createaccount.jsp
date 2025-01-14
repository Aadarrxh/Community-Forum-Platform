<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Account</title>
    <script src="https://cdn.tailwindcss.com?plugins=forms,typography"></script>
    <script src="https://unpkg.com/unlazy@0.11.3/dist/unlazy.with-hashing.iife.js" defer init></script>
    <script type="text/javascript">
      window.tailwind.config = {
        darkMode: ['class'],
        theme: {
          extend: {
            colors: {
              border: 'hsl(var(--border))',
              input: 'hsl(var(--input))',
              ring: 'hsl(var(--ring))',
              background: 'hsl(var(--background))',
              foreground: 'hsl(var(--foreground))',
              primary: {
                DEFAULT: 'hsl(var(--primary))',
                foreground: 'hsl(var(--primary-foreground))'
              },
              secondary: {
                DEFAULT: 'hsl(var(--secondary))',
                foreground: 'hsl(var(--secondary-foreground))'
              },
              destructive: {
                DEFAULT: 'hsl(var(--destructive))',
                foreground: 'hsl(var(--destructive-foreground))'
              },
              muted: {
                DEFAULT: 'hsl(var(--muted))',
                foreground: 'hsl(var(--muted-foreground))'
              },
              accent: {
                DEFAULT: 'hsl(var(--accent))',
                foreground: 'hsl(var(--accent-foreground))'
              },
              popover: {
                DEFAULT: 'hsl(var(--popover))',
                foreground: 'hsl(var(--popover-foreground))'
              },
              card: {
                DEFAULT: 'hsl(var(--card))',
                foreground: 'hsl(var(--card-foreground))'
              },
            },
          }
        }
      }
    </script>
    <style type="text/tailwindcss">
      @layer base {
        :root {
          --background: 0 0% 100%;
          --foreground: 240 10% 3.9%;
          --card: 0 0% 100%;
          --card-foreground: 240 10% 3.9%;
          --popover: 0 0% 100%;
          --popover-foreground: 240 10% 3.9%;
          --primary: 240 5.9% 10%;
          --primary-foreground: 0 0% 98%;
          --secondary: 240 4.8% 95.9%;
          --secondary-foreground: 240 5.9% 10%;
          --muted: 240 4.8% 95.9%;
          --muted-foreground: 240 3.8% 46.1%;
          --accent: 240 4.8% 95.9%;
          --accent-foreground: 240 5.9% 10%;
          --destructive: 0 84.2% 60.2%;
          --destructive-foreground: 0 0% 98%;
          --border: 240 5.9% 90%;
          --input: 240 5.9% 90%;
          --ring: 240 5.9% 10%;
          --radius: 0.5rem;
        }
        .dark {
          --background: 240 10% 3.9%;
          --foreground: 0 0% 98%;
          --card: 240 10% 3.9%;
          --card-foreground: 0 0% 98%;
          --popover: 240 10% 3.9%;
          --popover-foreground: 0 0% 98%;
          --primary: 0 0% 98%;
          --primary-foreground: 240 5.9% 10%;
          --secondary: 240 3.7% 15.9%;
          --secondary-foreground: 0 0% 98%;
          --muted: 240 3.7% 15.9%;
          --muted-foreground: 240 5% 64.9%;
          --accent: 240 3.7% 15.9%;
          --accent-foreground: 0 0% 98%;
          --destructive: 0 62.8% 30.6%;
          --destructive-foreground: 0 0% 98%;
          --border: 240 3.7% 15.9%;
          --input: 240 3.7% 15.9%;
          --ring: 240 4.9% 83.9%;
        }
      }
    </style>
  </head>
  <body>
    <div class="flex flex-col md:flex-row h-screen">
      <!-- Left Section: Create Account Form -->
      <div class="flex-1 flex items-center justify-center bg-background p-8">
        <div class="w-full max-w-md">
          <h1 class="text-2xl font-semibold text-primary mb-4">Create Account</h1>
          <form action="RegisterServlet" method="POST">
            <div class="mb-4">
              <label for="username" class="block text-muted-foreground text-sm font-medium">Username</label>
              <input type="text" id="username" name="username" class="border border-zinc-300 rounded-lg p-2 w-full" placeholder="Enter your username" required />
            </div>
            <div class="mb-4">
              <label for="email" class="block text-muted-foreground text-sm font-medium">Email</label>
              <input type="email" id="email" name="email" class="border border-zinc-300 rounded-lg p-2 w-full" placeholder="Enter your email" required />
            </div>
            <div class="mb-4">
              <label for="country" class="block text-muted-foreground text-sm font-medium">Country</label>
              <select id="country" name="country" class="border border-zinc-300 rounded-lg p-2 w-full" required>
                <option value="" disabled selected>Select your country</option>
                <option value="India">India</option>
                <option value="Nepal">Nepal</option>
                <option value="usa">USA</option>
                <option value="australia">Australia</option>
                <option value="germany">Germany</option>
                <option value="france">France</option>
                <option value="japan">Japan</option>
                <option value="brazil">Brazil</option>
                <option value="south-africa">South Africa</option>
                <option value="mexico">Mexico</option>
                <option value="china">China</option>
                <option value="italy">Italy</option>
                <option value="canada">Canada</option>
                <option value="uk">UK</option>
              </select>
            </div>
            <div class="mb-4">
              <label for="password" class="block text-muted-foreground text-sm font-medium">Password</label>
              <input type="password" id="password" name="password" class="border border-zinc-300 rounded-lg p-2 w-full" placeholder="Enter your password" required />
            </div>
            <button type="submit" class="bg-secondary text-secondary-foreground hover:bg-secondary/80 p-2 rounded-lg w-full">Sign Up</button>
          </form>
          <p class="mt-4 text-sm text-muted-foreground">
            Already have an account? 
            <a href="Login.jsp" class="text-primary hover:underline">Log in here</a>
          </p>
        </div>
      </div>
      <div class="flex-1">
        <img 
          src="../images/Agora.png" 
          alt="Create Account Image" 
          class="w-full h-full object-cover"
        />
      </div>
    </div>
  </body>
</html>
