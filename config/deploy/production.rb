
role :web, %w{deploy@nicolasevans.org}
server 'nicolasevans.org', user: 'deploy', roles: %w{web}
