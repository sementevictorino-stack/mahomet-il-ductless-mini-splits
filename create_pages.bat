@echo off
echo Creating remaining service pages...

:: Air Conditioning Repair
echo Creating air-conditioning-repair.html...
(
echo ^<!DOCTYPE html^>
echo ^<html lang="en"^>
echo ^<head^>
echo     ^<meta charset="UTF-8"^>
echo     ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^>
echo     ^<title^>Air Conditioning Repair Mahomet IL - 24/7 AC Repair Service^</title^>
echo     ^<meta name="description" content="Fast AC repair in Mahomet IL. 24/7 emergency service, certified technicians, all brands. Call (888^) 918-9104 for immediate air conditioning repair."^>
echo     ^<meta name="keywords" content="air conditioning repair, AC repair, Mahomet IL, emergency AC service, cooling repair"^>
echo     ^<meta name="robots" content="index, follow"^>
echo     
echo     ^<!-- Google Analytics --^>
echo     ^<script async src="https://www.googletagmanager.com/gtag/js?id=G-PZJGBZXWSD"^>^</script^>
echo     ^<script^>
echo     window.dataLayer = window.dataLayer ^|^| [];
echo     function gtag^(^){dataLayer.push^(arguments^);}
echo     gtag^('js', new Date^(^)^);
echo     gtag^('config', 'G-PZJGBZXWSD'^);
echo     ^</script^>
echo     
echo     ^<!-- Polyares Lead Script --^>
echo     ^<script type="text/javascript"^>
echo         var po_host=^(^(^"https:^"==document.location.protocol^)?"https://":"http://"^);
echo         var script=document.createElement^('script'^);
echo         script.setAttribute^('type', 'text/javascript'^);
echo         script.src = unescape^(po_host+"leads.polyares.com/js/embed/embed.js?apikey=b45897227445c105815c9bfc451e92eb6357bedc&buttons="^);
echo         document.head.appendChild^(script^);
echo     ^</script^>
echo     
echo     ^<link rel="stylesheet" href="../css/style.css"^>
echo     ^<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"^>
echo ^</head^>
echo ^<body^>
echo     ^<!-- Header --^>
echo     ^<header class="header"^>
echo         ^<nav class="nav-container"^>
echo             ^<a href="../index.html" class="logo"^>Mahomet Ductless Mini Splits^</a^>
echo             ^<button class="mobile-menu-toggle"^>
echo                 ^<i class="fas fa-bars"^>^</i^>
echo             ^</button^>
echo             ^<ul class="nav-menu"^>
echo                 ^<li class="nav-item"^>^<a href="../index.html" class="nav-link"^>Home^</a^>^</li^>
echo                 ^<li class="nav-item dropdown"^>
echo                     ^<a href="#services" class="nav-link"^>Services ^<i class="fas fa-chevron-down"^>^</i^>^</a^>
echo                     ^<div class="dropdown-content"^>
echo                         ^<a href="ductless-mini-split-installation.html" class="dropdown-link"^>Mini Split Installation^</a^>
echo                         ^<a href="ductless-mini-split-repair.html" class="dropdown-link"^>Mini Split Repair^</a^>
echo                         ^<a href="hvac-installation.html" class="dropdown-link"^>HVAC Installation^</a^>
echo                         ^<a href="air-conditioning-repair.html" class="dropdown-link"^>AC Repair^</a^>
echo                         ^<a href="heating-repair.html" class="dropdown-link"^>Heating Repair^</a^>
echo                         ^<a href="hvac-maintenance.html" class="dropdown-link"^>HVAC Maintenance^</a^>
echo                         ^<a href="indoor-air-quality.html" class="dropdown-link"^>Indoor Air Quality^</a^>
echo                         ^<a href="commercial-hvac.html" class="dropdown-link"^>Commercial HVAC^</a^>
echo                         ^<a href="energy-efficiency.html" class="dropdown-link"^>Energy Efficiency^</a^>
echo                         ^<a href="emergency-hvac.html" class="dropdown-link"^>Emergency HVAC^</a^>
echo                     ^</div^>
echo                 ^</li^>
echo                 ^<li class="nav-item dropdown"^>
echo                     ^<a href="#locations" class="nav-link"^>Service Areas ^<i class="fas fa-chevron-down"^>^</i^>^</a^>
echo                     ^<div class="dropdown-content"^>
echo                         ^<a href="../locations/champaign-il.html" class="dropdown-link"^>Champaign IL^</a^>
echo                         ^<a href="../locations/urbana-il.html" class="dropdown-link"^>Urbana IL^</a^>
echo                         ^<a href="../locations/savoy-il.html" class="dropdown-link"^>Savoy IL^</a^>
echo                         ^<a href="../locations/rantoul-il.html" class="dropdown-link"^>Rantoul IL^</a^>
echo                         ^<a href="../locations/gibson-city-il.html" class="dropdown-link"^>Gibson City IL^</a^>
echo                         ^<a href="../locations/monticello-il.html" class="dropdown-link"^>Monticello IL^</a^>
echo                         ^<a href="../locations/mansfield-il.html" class="dropdown-link"^>Mansfield IL^</a^>
echo                         ^<a href="../locations/fisher-il.html" class="dropdown-link"^>Fisher IL^</a^>
echo                         ^<a href="../locations/paxton-il.html" class="dropdown-link"^>Paxton IL^</a^>
echo                         ^<a href="../locations/tuscola-il.html" class="dropdown-link"^>Tuscola IL^</a^>
echo                     ^</div^>
echo                 ^</li^>
echo                 ^<li class="nav-item"^>^<a href="../index.html#about" class="nav-link"^>About^</a^>^</li^>
echo                 ^<li class="nav-item"^>^<a href="tel:+18889189104" class="nav-link cta-btn"^>Call Now^</a^>^</li^>
echo             ^</ul^>
echo         ^</nav^>
echo     ^</header^>
echo ^</body^>
echo ^</html^>
) > services/air-conditioning-repair.html

echo Done creating service pages template!
pause
